different(red, green) .
different(red, blue) .
different(green, red) .
different(green, blue) .
different(blue, red) .
different(blue, green) .

coloring(Lombardia, Piemonte, Veneto, FriuliVN, TrentinoAA, EmiliaR) :-
    different(Lombardia, Piemonte), different(Lombardia, Veneto), different(Lombardia, TrentinoAA), different(Lombardia, EmiliaR),
    different(TrentinoAA, Lombardia), different(TrentinoAA, Veneto),
    different(Veneto, Lombardia), different(Veneto, TrentinoAA), different(Veneto, FriuliVN), different(Veneto, EmiliaR),
    different(FriuliVN, Veneto),
    different(EmiliaR, Piemonte), different(EmiliaR, Lombardia), different(EmiliaR, Veneto),
    different(Piemonte, Lombardia), different(Piemonte, Lombardia) .
