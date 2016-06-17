-module(two) .
-export([find/2]) .

% [{erlang, "a functional language"}, {ruby, "an OO language"}]
find(List, Keyword) -> [Value || {Key, Value} <- List, Key == Keyword] .
