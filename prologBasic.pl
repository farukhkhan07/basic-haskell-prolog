#Author: Farrukh Ahmed Khan
witch(hermione).
witch(bertha).
witch(mafalda).

good(hermione).
bad(bertha).
good(mafalda).

bff(hermione,mafalda).
bff(X,Y) :- good(X), good(Y).
hate(X,Y) :- good(X) ,bad(Y).


player(Adam,football).

loves(Breta,cat).
loves(X,Y):- loves(Chloe,cat).

eats(Daisy,anything).
sweet(Daisy).
salty(Daisy).
eats(X,Y) :- sweet(X), salty(Y).


eval(plus(A,B,C)) :- !, eval(A,A1), eval(B,B1), C is A1+B1.

sum_to(0,0).

sum_to(N,X) :-N1 is N-1, (plus(N,N1,X)),sum_to(N1,X).

p(1).
p(2):- !.
p(3).


sum42([],0).
sum42([X|Xs],N) :- atom(X),!, sum42(Xs,M), N is M+42.
sum42(X|Xs, N) :- sum42(Xs,M), integer(X),!, N is M+X.
sum42([_|Xs],N) :- sum42(Xs,N).
