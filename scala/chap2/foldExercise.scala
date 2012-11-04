val strings = List("abc", "123", "derp")
println("List of strings is " + strings)

val count = strings.foldLeft(0)((sum, value) => sum + value.length)
println("count of string characters is " + count)