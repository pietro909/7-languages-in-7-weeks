rec_get_rows_cols([], CurrentRows, CurrentCols, Rows, Cols) :-
    Rows = CurrentRows,
    Cols = CurrentCols .
rec_get_rows_cols([[Row, Col]|Tail], CurrentRows, CurrentCols, Rows, Cols) :-
    append([Row], CurrentRows, ActualRows) ,
    append([Col], CurrentCols, ActualCols) ,
    get_rows_cols(Tail, ActualRows, ActualCols, Rows, Cols) .
get_rows_cols(Items, Rows, Cols) :-
    rec_get_rows_cols(Items, [], [], Rows, Cols) .

rec_get_diagonals([], CurrentNWs, CurrentSEs, NWs, SEs) :-
    NWs = CurrentNWs ,
    SEs = CurrentSEs .
rec_get_diagonals([[Row, Col]|Tail], CurrentNWs, CurrentSEs, NWs, SEs) :-
    Sum is Col + Row ,
    Sub is Col - Row ,
    append([Sum], CurrentNWs, ActualNWs) ,
    append([Sub], CurrentSEs, ActualSEs) ,
    rec_get_diagonals(Tail, ActualNWs, ActualSEs, NWs, SEs) .
get_diagonals(Items, NWs, SEs) :-
    rec_get_diagonals(Items, [], [], NWs, SEs) .

eq(Queens) :-
    Queens = [Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q8] ,
    get_rows_cols(Queens, Rows, Cols) ,
    fd_domain(Rows, 1, 8) ,
    fd_all_different(Rows) ,
    fd_domain(Cols, 1, 8) ,
    fd_all_different(Cols) ,
    get_diagonals(Queens, NWs, SEs) ,
    fd_all_different(NWs) ,
    fd_all_different(SEs) .
