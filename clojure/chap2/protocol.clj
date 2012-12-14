(defprotocol Animal
  (speak [this]))

(defrecord Dog []
  Animal
  (speak [_] "Woof"))

(defrecord Duck []
  Animal
  (speak [_] "Quack"))

(def dog (Dog.))
(speak dog)

(def duck (Duck.))
(speak duck)