#!/usr/bin/env bb

(import [java.net URL URLDecoder])

;; start in repl with: `bb --nrepl-server 5555 macos/dock.clj`

;; this script requires the cli program `dockutil` to be installed
;; it tries to make the dock items consistent by removing all items first and then manually adding items to the dock
;; items that are not in the list below will be added to the end of the dock

(def default-section "persistent-apps")

(def sections (sorted-map
               "browsers" ["Firefox Developer Edition" "Safari" "Google Chrome"]
               "dev" ["kitty" "Visual Studio Code"]
               "productivity" ["1Password 7" "Microsoft To Do" "Bear"]
               "persistent-apps" ["Spotify" "Figma" "Docker"]))

(defn parse-location [x]
  (try (-> x URL. .getPath URLDecoder/decode)
       (catch Exception _e x)))

(defn parse-existing-items []
  (let [out (:out (shell/sh "dockutil" "--list"))]
    (if (str/blank? out)
      '[]
      (let [lines (str/split out #"\n")
            entries (map #(str/split % #"\t") lines)]
        (map (fn [e] {:name (nth e 0)
                      :location (parse-location (nth e 1))
                      :section (nth e 2)}) entries)))))

(defn extra? [configured-items item]
  (let [x (set (map :name configured-items))]
    (not (contains? x (:name item)))))

(defn merge-items [configured-items existing-items]
  (let [extra (filter #(extra? configured-items %) existing-items)]
    (concat configured-items (map #(assoc % :section "extra") extra))))

(defn add-to-dock! [{:keys [name location]}]
  (println "adding" name "to dock")
  (shell/sh "dockutil" "--add" location "--label" name "--section" "apps"))

(defn remove-from-dock! [label]
  (println "removing" label "from dock")
  (shell/sh "dockutil" "--remove" label))

(defn add-spacer! [section]
  (println "adding spacer for section" section)
  (shell/sh "dockutil" "--add" "''" "--type" "spacer" "--section" section))

(defn remove-spacers! []
  (println "removing existing dock spacers")
  (shell/sh "dockutil" "--remove" "spacer-tiles"))

(defn execute! []
  (remove-spacers!)
  (let [existing-items (parse-existing-items)
        configured-items (mapcat (fn [[section items]]
                                   (map (fn [item] {:name item
                                                    :location (str "/Applications/" item ".app")
                                                    :section section}) items))
                                 sections)
        new-items (merge-items configured-items existing-items)]
    (doseq [item existing-items]
      (remove-from-dock! (:name item)))
    (doseq [item new-items]
      (add-to-dock! item)))
  ;; configure dock size
  (shell/sh "defaults" "write com.apple.dock tilesize -integer 40")
  (shell/sh "killall" "Dock")
  :success)

(try  (execute!)
      (catch Exception e (println e)))