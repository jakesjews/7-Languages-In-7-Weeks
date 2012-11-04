-module (exercises).
%-export ([word_count/1]).
-export ([count_down/1]).
%-export ([print_message/1]).

count_down(1) -> 1;
count_down(N) -> 
	io:format(integer_to_list(N) ++ "~n"),
	count_down(N - 1).
