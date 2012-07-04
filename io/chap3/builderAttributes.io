OperatorTable addAssignOperator(":", "atPutValue")

Builder := Object clone do (
	
	atPutValue := method(
		key := call evalArgAt(0) asMutable removePrefix("\"") removeSuffix("\"")
		value := call evalArgAt(1)
		" #{key}=\"#{value}\"" interpolate
	)

	curlyBrackets := method(
		call message arguments map(arg, self doMessage(arg)) join("")
	)
	
	indent := ""

	forward := method(    
	    arguments := call message arguments
	    name := call message name

	    attrs := ""    
	    if(arguments size > 0 and arguments at(0) name == "curlyBrackets",
	      attrs = doMessage(arguments removeFirst)
	    )

	    writeln(indent, "<", name, attrs, ">")
	    arguments foreach(index, arg,
	      indent = indent .. "  "      
	      content := self doMessage(arg)
	      if (content type == "Sequence", writeln(indent, content))
	      indent = indent exclusiveSlice(2)
	    )
	    writeln(indent, "</", name, ">")
	)
)

doFile("builderAttributesTest.io")