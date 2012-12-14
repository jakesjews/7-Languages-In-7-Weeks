(defmacro unless [test body else]
  (list 'if (list 'not test) body else))

(unless true (println "Should not print") (println "Should print"))

(unless false (println "Should print") (println "Should not print"))