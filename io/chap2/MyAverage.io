List myAverage := method(
    total := 0
    self foreach(number,
        if(number type != "Number", Exception raise("Non-number in list"))
        total = total + number 
    )
    return total / (self size)
)

nums := list(1, 2, 3, 4)
nums myAverage println

nums = list(1, 2, 3, "a")
nums myAverage
