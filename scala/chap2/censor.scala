import collection.mutable.HashMap

trait Censor {

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

class CensoredList(val words:List[String]) extends Censor {
	def censor() : List[String] = { censor(words) }
}

val derps = new CensoredList(List("hello", "shoot", "darn")) 
println(derps.censor)