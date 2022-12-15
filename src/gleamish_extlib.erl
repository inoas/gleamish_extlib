-module(gleamish_extlib).

-export([unix_timestamp/0, operating_system/0, array_from_list/1, array_to_list/1,
         array_set/3, array_get/2, array_size/1, array_count/1, array_reduce/3,
         array_reduce_right/3]).

unix_timestamp() ->
    {MegaSecs, Secs, _} = os:timestamp(),
    MegaSecs * 1000000 + Secs.

operating_system() ->
    Name = operating_system_name(),
    Version = operating_system_version(),
    <<Name/binary, " ", Version/binary>>.

operating_system_name() ->
    {_OsFamilyAtom, OsNameAtom} = os:type(),
    OsNameString = atom_to_list(OsNameAtom),
    list_to_binary(OsNameString).

operating_system_version() ->
    _ = os:type(),
    OsVersion =
        case os:version() of
            {Major, Minor, Release} ->
                [integer_to_list(Major),
                 ".",
                 integer_to_list(Minor),
                 ".",
                 integer_to_list(Release)];
            VersionString ->
                VersionString
        end,
    list_to_binary(OsVersion).

array_from_list(List) ->
    array:from_list(List).

array_to_list(Array) ->
    array:sparse_to_list(Array).

array_set(Array, Index, Value) ->
    array:set(Index, Value, Array).

array_get(Array, Index) ->
    try array:get(Index, Array) of
        undefined ->
            {error, nil};
        Any ->
            {ok, Any}
    catch
        error:badarg ->
            {error, nil}
    end.

array_size(Array) ->
    array:size(Array).

array_count(Array) ->
    length(array:sparse_to_list(Array)).

array_reduce(Array, Acc, Fn) ->
    Fn@1 = fun(_Index, Elem, Acc@2) -> Fn(Acc@2, Elem) end,
    array:foldl(Fn@1, Acc, Array).

array_reduce_right(Array, Acc, Fn) ->
    Fn@1 = fun(_Index, Elem, Acc@2) -> Fn(Acc@2, Elem) end,
    array:foldr(Fn@1, Acc, Array).
