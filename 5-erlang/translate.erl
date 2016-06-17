-module(translate) .
-export([loop/0]) .
-export([translate/2]) .

loop() ->
    receive
        {Pid, "casa"} ->
            Pid ! "dar",
            loop();
        {Pid, "bianca"} ->
            Pid ! "abjad",
            loop();
        {Pid, _} ->
            Pid ! "majiesistiex",
            loop()
    end.

translate(To, Word) ->
    To ! {self(), Word},
    receive
        Translation -> Translation
    end.
