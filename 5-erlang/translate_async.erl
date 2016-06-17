-module(translate) .
-export([loop/0]) .

loop() ->
    receive
        "casa" ->
            io:format("dar~n"),
            loop();
        "bianca" ->
            io:format("abjad~n"),
            loop();
        _ ->
            io:format("majiesistiex"),
            loop()
    end.
