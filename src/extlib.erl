-module(extlib).

-export([
    unix_timestamp/0
]).

unix_timestamp() ->
	{MegaSecs, Secs, _} = os:timestamp(),
	MegaSecs * 1000000 + Secs.
