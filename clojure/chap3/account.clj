(def accounts (ref [50 75 20]))

(defn credit [accountNum amount]
  (def newBalance (+ (@accounts accountNum) amount))
  (def newAccounts (assoc @accounts accountNum newBalance))
  (dosync (ref-set accounts newAccounts)))

(defn debit [accountNum amount]
  (credit accountNum amount))

(debit 1 20)
(credit 2 15)