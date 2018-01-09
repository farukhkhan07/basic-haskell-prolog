# Author: Farrukh Ahmed Khan
startpos([f1,f1,f1,f1,empty,f2,f2,f2,f2]).
goalpos([f2,f2,f2,f2,empty,f1,f1,f1,f1]).

moveleft([empty,f2|R], ml, [f2,empty|R]).
moveleft([H|X], M, [H|Y]) :- moveleft(X,M,Y).

jumpleft([empty,f1,f2|R], jl, [f2,f1,empty|R]).
jumpleft([H|X], M, [H|Y]) :- jumpleft(X,M,Y).

left(P1,M,P2) :- moveleft(P1,M,P2).
left(P1,M,P2) :- jumpleft(P1,M,P2).

moveright([f1,empty|R], mr, [empty,f1|R]).
moveright([H|X], M, [H|Y]) :- moveright(X,M,Y).

jumpright([f1,f2,empty|R], jr, [empty, f2, f1|R]).
jumpright([H|X], M, [H|Y]):- jumpright(X,M,Y).

right(P1,M,P2) :- moveright(P1,M,P2).
right(P1,M,P2) :- jumpright(P1,M,P2).

move(P1,M,P2) :- left(P1,M,P2).
move(P1,M,P2) :- right(P1,M,P2).

run(X,[M|L],Y) :- move(X,M,Z), run(Z,L,Y).
run(X,[],X).



times(X,Y,Z) :- Z is X*Y.

gt5(X) :- X > 5.

is10(X) :- X==10.


last1(L).
last1(X,[_|[1]]) :- last1(X,[Y|Z]).