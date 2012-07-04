curlyBrackets := method(
	call message arguments map(value,
		self doMessage(value);
	)
)

languages := {
	"JavaScript",
	"CoffeeScript",
	"Lua",
	"IO"
};

languages println