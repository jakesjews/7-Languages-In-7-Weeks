class TicTacToe(val Board: List [List[Char]]) {

	val X = 'x'
	val O = 'o'

	def getWinner() : String = {

		var winner = "nobody"

		if(checkHorizontal(X) || checkVertical(X) || checkDiagonal(X)) {
			winner = X.toString 
		} else if (checkHorizontal(O) || checkVertical(O) || checkDiagonal(O)) {
			winner = O.toString
		}

		return winner + " wins!"
	}

	def checkHorizontal(char: Char) : Boolean = {
		Board.foreach { row => 
			if(row.distinct == List(char)) {
				return true
			}
		}
		return false
	}

	def checkVertical(char: Char) : Boolean = {

		for(i <- 0 until Board.length - 1) {
			var columnList = List.empty [Char]	
			Board.foreach { row => 
				columnList ::= row.apply(i)	
			}
			if(columnList.distinct == List(char)) {
				return true
			}			
		}
		return false
	}

	def checkDiagonal(char: Char) : Boolean = {

		var diagList = List.empty [Char]
		for(i <- 0 until Board.length - 1) {
			diagList ::= Board.apply(i).apply(i)
		}			

		if(diagList.distinct == List(char)) {
			return true
		}

		diagList = List.empty [Char]
		var counter = 0
		for(i <- Board.length - 1 until 0 by -1) {
			diagList ::= Board.apply(i).apply(counter)
			counter = counter + 1
		}			

		if(diagList.distinct == List(char)) {
			return true
		}

		return false
	}

	def all(list: List[Char], char: Char) : Boolean = {
		return (list.distinct == List(char))
	}
}

val boardHorizontal = 
List(
	List('x', 'x', 'x'),
	List('o', 'o', 'x'),
	List('x', 'x', 'o')
)

val boardVertical = 
List(
	List('x', 'o', 'x'),
	List('x', 'o', 'o'),
	List('x', 'x', 'o')
)

val boardDiagonal = 
List(
	List('o', 'o', 'x'),
	List('x', 'o', 'o'),
	List('x', 'x', 'o')
)

val tickHorizontal = new TicTacToe(boardHorizontal)
val tickVertical = new TicTacToe(boardVertical)
val tickDiagonal = new TicTacToe(boardDiagonal)

println(tickHorizontal.getWinner())
println(tickVertical.getWinner())
println(tickDiagonal.getWinner())
