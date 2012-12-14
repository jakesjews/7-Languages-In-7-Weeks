(def open (atom true))
(def counter (atom 0))
(def chairs (atom {:chair1 false, :chair2 false, :chair3 false}))

(defn getCustomerArrivalTime []
  (def tmpRand (rand-int 30))
  (if (< tmpRand 10) (+ tmpRand 10) tmpRand))

(defn getChair [filled]
  (key (first (filter (fn [[key val]] (= filled val)) @chairs))))

(defn getOpenChair [] (getChair false))

(defn getFilledChair [] (getChair true))

(defn tryPutCustomerInChair []
  (let [chair (getOpenChair)]
  	(if (not= chair nil) 
      (swap! chairs assoc chair true))))

(defn customerArrives []
  (do
    (future (Thread/sleep (getCustomerArrivalTime)))
    (tryPutCustomerInChair)))

(defn giveHaircut []
  (do
    (let [chair (getFilledChair)] 
      (if (not= chair nil)
        ((swap! chairs assoc chair false)
         (Thread/sleep 20)
         (swap! counter inc))))))

(defn runBusiness []
  (future 
    (while @open
      ((customerArrives)
      (giveHaircut)))))

(defn run []
  (runBusiness)
  (Thread/sleep 10000)
  (swap! open not))

(run)
@counter