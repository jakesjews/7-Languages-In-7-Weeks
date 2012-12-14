(defn collection-type [col]
  ({ clojure.lang.PersistentList :list,
  	 clojure.lang.PersistentVector :vector,
   	 clojure.lang.PersistentArrayMap :map} 
   (type col)))

(collection-type '(1 2 3))
(collection-type [:a :b :c :d])
(collection-type {:a "b", :b "c"})