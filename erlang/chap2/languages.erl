-module(languages).
-export([get_language/2]).

get_language(Languages, Keyword) ->
	[{Language} || {Language, Description} <- Languages, Keyword == Description].