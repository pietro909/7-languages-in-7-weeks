concatenate([], List, List) .
concatenate([Head|Tail1], List, [Head|Tail2]) :-
    concatenate(Tail1, List, Tail2) .

reverse_list([],[]) .
reverse_list([Head|Tail], List) :-
    concatenate(TailToDo, [Head], List), reverse_list(Tail, TailToDo) .
