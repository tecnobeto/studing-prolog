# Variáveis existenciais
homem(lima).
homem(hamilton).
mulher(maria).
mulher(ana).
marido(lima, maria).
casado(hamilton, ana).

pai(lima, rodrigo).
pai(lima, teresa).
pai(rodrigo, marta).
pai(borges, lima).
pai(borges, hamilton).

mae(maria, rodrigo).
mae(maria, teresa).
mae(rosa, marta).
mae(paula, lima).
mae(paula, hamilton).
mae(joana, rosa).

filho(X,Y) :- pai(Y, X).
irmao(X,Y) :- pai(P, X), pai(P, Y), X\=Y. 
tio(X,Y) :- pai(P,X), pai(P,Z), pai(Z,Y), X\=Z.
avo(X,Y) :- pai(X,Z), pai(Z,Y).

/*

X is 12/3.5
X is 12//9
X is 5/2 + 2/4 - 1/2.
X is ((3 + 1) * (2-1)) // 4.



*/