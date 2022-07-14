-module(extlib).

-export([
    unix_timestamp/0, operating_system/0
]).

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
	OsVersion = case os:version() of
		{Major, Minor, Release} -> [integer_to_list(Major), ".", integer_to_list(Minor), ".", integer_to_list(Release)];
		VersionString -> VersionString
	end,
	list_to_binary(OsVersion).
