-module (exercises).

-export ([count_down/1, word_count/1, print_message/1]).

-import (string).

count_down(1) -> 1;
count_down(N) -> 
	io:format(integer_to_list(N) ++ "~n"),
	count_down(N - 1).

word_count(Words) -> 
	length(string:tokens(Words, " ")).

print_message(success) -> "success";
print_message({error, Message}) -> "error: " ++ Message.