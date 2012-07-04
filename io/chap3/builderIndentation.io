Builder := Object clone

Builder numIndents ::= 0

Builder forward := method(
	
	indents := ("    " repeated( self numIndents() ));
	
	writeln(indents, "<", call message name, ">")
	self setNumIndents( self numIndents + 1 );
	
	call message arguments foreach(
		arg,
		content := self doMessage(arg);
		if(content type == "Sequence",
			writeln(indents, "    ", content)
		)
	)
	
	self setNumIndents( self numIndents - 1 );
	
	writeln(indents, "</", call message name, ">")
)

Builder ul(
	ul( 
		li("Javascript"),
		li("CoffeeScript") 
	),
	li("Lua"),
	li("IO")
)