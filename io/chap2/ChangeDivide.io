Number oldDivide := Number / getSlot("/") 
Number / := method(denom, if(denom == 0, return 0, return self oldDivide(denom)))

(8 / 0) println
(8 / 4) println
