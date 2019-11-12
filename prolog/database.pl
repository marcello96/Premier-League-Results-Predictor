:- dynamic
    xgospodarz/1,
    xgosc/1.

% sedzia - srednia zoltych kartek - srednia czerwonych kartek
sedzia(oliver, 3.57, 0.00).
sedzia(dean, 4.38, 0.25).
sedzia(friend, 4.60, 0.40).
sedzia(atkinson, 3.25, 0).

mecz(


wynik(gospodarz) :-
        sedzie_sprzyja(gospodarz),
        forma(gosc, slaba).

wynik(gospodarz) :-
        sedzie_sprzyja(gospodarz),
        forma(gospodarz, slaba).

wynik(gosc) :-
        sedzie_sprzyja(gosc),

wynik(remis) :-
        
faule(X, Y) :- gra(X, Z), posiada_faule(Z, Y).
        
fauluje(gospodarz, duzo) :- faule(gospodarz, X), X > 10.
fauluje(gospodarz, malo) :- faule(gospodarz, X), X < 5.
fauluje(gospodarz, srednio) :- faule(gospodarz, _). 

fauluje(gosc, duzo) :- faule(gosc, X), X > 10.
fauluje(gosc, malo) :- faule(gosc, X), X < 5.
fauluje(gosc, srednio) :- faule(gosc, _).

sedzia_sprzyja(gospodarz) :- sedzia_kartki(gospodarz, malo), sedzia_kartki(gosc, duzo).
sedzia_sprzyja(gosc) :- sedzia_kartki(gosc, malo), sedzia_kartki(gospodarz, duzo).
sedzia_sprzyja(remis).

bedzie_czerwona(gospodarz) :- fauluje(gospodarz, duzo), sedzia_sprzyja(gosc).
bedzie_czerwona(gosc) :- fauluje(gosc, duzo), sedzia_sprzyja(gospodarz).



