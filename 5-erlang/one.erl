-module(one) .
-export([words/1]) .
-export([countToTen/1]) .

% empty string
words([]) -> 0 ;
% one space string
words([Head|[]]) when Head == 32 -> 0 ;
% one letter string
words([_|[]]) -> 1 ;
% space and non-empty string
words([Head|Tail]) when Head == 32 -> words(Tail) ;
% letter and non-empty string, second letter is space
words([_|[Head2|Tail]]) when Head2 == 32 -> 1 + words(Tail) ;
% letter and non empty string
words([_|Tail]) -> words(Tail) .


countToTen(N) when N == 10 -> N ;
countToTen(N) when N > 10 ->
    erlang:display(N) ,
    countToTen(N - 1) ;
countToTen(N) ->
    erlang:display(N) ,
    countToTen(N + 1) .
