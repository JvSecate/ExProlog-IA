%pais(nome,area,população).
pais(brasil, 9, 130).
pais(china, 12, 1800).
pais(eua, 9, 230).
pais(índia, 3, 450).

%2.1
dens(P,D) :- pais(P,A,X), D is X/A.
%a) dens(P,D).
%b) dens(índia,X), dens(china,Y),  X > Y.

%2.2
%func(Código, Nome, Salário)
func(1, ana, 1000.90).
func(2, bia, 1200.00).
func(3, ivo, 903.50). 
func(4, leo, 2500.35).
func(5, clô, 1800).
func(6, gil, 1100).

%dep(Código, Nome)
dep(1, ary).
dep(3, raí).
dep(3, eva).
dep(4, lia).
dep(4, noé).
dep(5, eli).

%a) func(_, X, Y), Y >= 1500, Y =< 3000.
%b) func(X, Y, Z), Z < 1200, \+ dep(X,_).
%c) func(X, _, Z), Z > 1700, dep(X,Y).

%2.3
% filme(Título, Gênero, Ano, Duração)
filme('Uma linda mulher', romance, 1990, 119).
filme('Sexto sentido', suspense, 2001, 108).
filme('A cor púrpura', drama, 1985, 152).
filme('Copacabana', comédia, 2001, 92).
filme('E o vento levou', drama, 1939, 233).
filme('Carrington', romance, 1995, 130).

%a)
longo(X) :- filme(X, _, _, Y), Y > 150.

%b)
lançamento(X) :- filme(X, _, Y, _), Y >= 2022.

%2.4/2.5
pessoa('Ana', fem, 23, 1.55, 56).
pessoa('Bia', fem, 19, 1.71, 61.3).
pessoa('Ivo', masc, 22, 1.80, 70.5).
pessoa('Lia', fem, 17, 1.85, 57.3).
pessoa('Eva', fem, 28, 1.75, 68.7).
pessoa('Ary', masc, 25, 1.72, 68.9).

%a) pessoa(X, fem, Y, _, _), Y >= 20.
%b) pessoa(X, _, _, Y, Z), Y >= 1.70, Z < 65.
%c) 
casal(X, Y) :- pessoa(X, masc, _, A1, _), pessoa(Y, fem, _, A2, _), A1 > A2.
%casal(X, Y).

%2.5
modelo(X) :- pessoa(X, fem, I, A, P), I < 25, A >= 1.70, P =< 62.1*A-44.7.
%modelo(X).