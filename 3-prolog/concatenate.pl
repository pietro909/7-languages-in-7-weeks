concatenate([], List, List) .
% concatenate([Head|[]], List, [Head|List]) .
concatenate([Head1|Tail1], List, [Head1|Tail2]) :-
    concatenate(Tail1, List, Tail2) .
