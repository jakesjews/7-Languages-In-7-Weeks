reverse_list([], []).
reverse_list([Head | Tail], Out) :- reverse_list(Tail, TailReversed), append(TailReversed, [Head], Out).

min([Head | []], Head).
min([Head | Tail], TailMin) :- min(Tail, TailMin), TailMin =< Head.
min([Head | Tail], Head) :- min(Tail, TailMin), TailMin > Head.

sort_list([X],[X]).
sort_list(L,[P|S]) :- min(L,P), append(A,[P|B],L), append(A,B,Q), sort_list(Q,S).