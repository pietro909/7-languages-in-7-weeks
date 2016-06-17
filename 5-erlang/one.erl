-module(one) .
-export([words/1]) .

% empty string
words([]) -> 0 ;
% one space string
words([Head|[]]) when Head == 32 -> 0 ;
% one letter string
words([Head|[]]) -> 1 ;
% space and non-empty string
words([Head|Tail]) when Head == 32 -> words(Tail) ;
% letter and non-empty string, second letter is space
words([Head|[Head2|Tail]]) when Head2 == 32 -> 1 + words(Tail) ;
% letter and non empty string
words([Head|Tail]) -> words(Tail) .
