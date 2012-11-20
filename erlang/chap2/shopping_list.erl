-module(shopping_list).
-export([get_totals/1]).

get_totals(Shopping_Cart) ->
	[{Item, Price * Quantity} || {Item, Quantity, Price} <- Shopping_Cart].