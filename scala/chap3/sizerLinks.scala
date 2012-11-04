import scala.actors._
import Actor._
import scala.xml._
import scala.io._
import scala.annotation.tailrec

object PageLoader {
	def getLinkCount(url: String) = {
		countSubstring(scala.io.Source.fromURL(url).mkString, "<a")
	}
	def countSubstring(source:String, search:String): Int = {
		@tailrec def count(position: Int, c: Int) : Int = {
			val index = source indexOf(search, position)
			if(index == -1) c else count(index + search.size, c + 1)
		}
		count(0,0)
	}
}

var urls = List(
	"http://yahoo.com/",
	"http://twitter.com/",
	"http://google.com/",
	"http://cnn.com/"
)

def getPageSizeConcurrently() = {
	val caller = self

	for(url <- urls) {
		actor { caller ! (url, PageLoader.getLinkCount(url))}
	}

	for(i <- 1 to urls.size) {
		receive {
			case (url, size) =>
				println("Size for " + url + ": " + size)
		}
	}
}

getPageSizeConcurrently