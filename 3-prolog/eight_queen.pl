/*eq([_,_,_,_,_,_,_,_,
    _,_,_,_,_,_,_,_,
    _,_,_,_,_,_,_,_,
    _,_,_,_,_,_,_,_,
    _,_,_,_,_,_,_,_,
    _,_,_,_,_,_,_,_,
    _,_,_,_,_,_,_,_,
    _,_,_,_,_,_,_,_],
    Solution) .
eq(Board, Solution) .
eq(*/

get_rows_cols([], CurrentRows, CurrentCols, Rows, Cols) :-
    Rows = CurrentRows, 
    Cols = CurrentCols .

get_rows_cols([[Row, Col]|Tail], CurrentRows, CurrentCols, Rows, Cols) :-
    %nth0(0, Head, Row) ,
    %nth0(1, Head, Col) ,
    append([Row], CurrentRows, ActualRows) ,
    append([Col], CurrentCols, ActualCols) ,
    get_rows_cols(Tail, ActualRows, ActualCols, Rows, Cols) .

eq(Queens) :-
    Queens = [Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q8] ,
    get_rows_cols(Queens, [], [], Rows, Cols) ,
    fd_domain(Rows, 1, 8) ,
    fd_domain(Cols, 1, 8) .

