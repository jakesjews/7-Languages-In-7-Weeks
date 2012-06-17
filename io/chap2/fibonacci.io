fibLoop := method(limit,
    j := 0
    k := 1
    i := 1

    for(i, 1, limit,
        if(i == 1, 
            1 println,
            total := j + k
            total println
            j = k
            k = total
        )
    )
)

fib := method(limit,
    fibRecursive(limit, 1, 0, 1)
)

fibRecursive := method(limit, i, j, k,
    if(i == limit, return)

    if(i == 2, 
        total := 1,
        total := j + k
    )

    total println
    fibRecursive(limit, (i + 1), k, (j + k))
)

fibLoop(10)
fib(10)
