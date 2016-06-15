concatenate([], List, List) .
concatenate([Head|Tail1], List, [Head|Tail2]) :-
    concatenate(Tail1, List, Tail2) .

reverse_list([],[]) .
reverse_list([Head|Tail], List) :-
    concatenate(TailToDo, [Head], List), reverse_list(Tail, TailToDo) .

min(A, B, Min) :- A < B, Min is A .
min(A, B, Min) :- A > B, Min is B .
min(A, B, Min) :- A = B, Min is A .

head([Head|_], Head) .

rec(Cm, [], Cm) .
rec(Cm, [Head|Tail], Min) :-
    min(Cm, Head, Am) ,
    rec(Am, Tail, Min) .
find_min([Head|Tail], Min) :-
    head(Tail, Head2) ,
    min(Head, Head2, FirstMin) ,
    rec(FirstMin, Tail, Min) .

