input := File standardInput()
num := Random value(100) floor()

while((guess := input readLine() asNumber()) != num, 
    if(guess > num, "lower" println, "higher" println)
)

"You guessed the number" println
