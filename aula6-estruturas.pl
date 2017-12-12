%estruturas
cidade(luanda, pais(angola)).
cidade(accra, pais(ghana)).
cidade(nairobe, pais(kenya)).


pessoa(lucas,data(12,maio,1986)).
pessoa(fabio,data(12,julho,1986)).
pessoa(aderito,data(12,dezembro,1987)).
pessoa(jeronimo,data(12,janeiro,1987)).
pessoa(rosa,data(12,dezembro,1996)).

aniversario(X,Y,Z) :- pessoa(X, data(Y, Z, Ano)), Ano =:= 1987.
aniversarioSemMes(X,Y) :- pessoa(X, data(Y, _, Ano)), Ano<1987.

/*
Consultas:

Cidade de um determinado pais
cidade(Nome, pais(angola)).

Todas as cidades sem importar o pais
_ é o mesmo do haskell, qualquer coisa
?- cidade(Cidade, pais(_)).

Toda relação de nome por pais
cidade(Nome, Pais).

Todos os aniversarios do ano de 1987
aniversario(Nome, Dia, Mes).

*/