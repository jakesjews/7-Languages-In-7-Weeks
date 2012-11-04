import collection.mutable.HashMap

class ListCensor {

	val censoredWords = new HashMap[String, String] 
	loadFile	

	def loadFile() {
		val fileName = "censor.txt"
		io.Source.fromFile(fileName).getLines().foreach { (line) => {
			val parts = line.split(":")
			censoredWords += parts(0) -> parts(1)
		}}
	}

	def censor(words: List[String]) : List[String] = {
		words.map(word => {
			if(censoredWords.contains(word)) {
				censoredWords(word)
			} else {
				word
			}
		})
	}

}

val words = List("Hello", "shoot", "darn")
val listCensor = new ListCensor
println(listCensor.censor(words))
