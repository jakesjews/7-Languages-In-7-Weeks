matrix := Object clone

matrix dim := method(x, y,
    self lists := list()
    for(i, 1, y, 
        lst := list()
        lst setSize(x)
        self lists append(lst)
    )
)

matrix set := method(x, y, value,
    self lists at(y) insertAt(x, value)
)

matrix get := method(x, y,
    return self lists at(y) at(x)
)

matrix loadFile := method(
    self doRelativeFile("matrix")
)

matrix saveFile := method(
    matrixFile := File open("matrix")
    matrixFile write ( self serialized() )
    matrixFile close
)

matrix dim(5, 5)
matrix set("hello", 2, 2)
matrix get(2, 2) println
matrix saveFile

fileMatrix := matrix loadFile
fileMatrix set("hello", 2, 2)
fileMatrix get(2, 2) println
