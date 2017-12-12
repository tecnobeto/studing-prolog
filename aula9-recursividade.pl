/*
Verifica se o elemento pertence ou não na lista

Procura se está na cabeça:
- senão houver chama a recursão removendo a cabeca e vendo o próximo
- se sim, achou o elemento
*/


pertence(X, [X|_]). %Se pertence a cabeça da lista
pertence(X, [_|Y]) :- pertence(X,Y). % Percorre o resto da lista e verifica se existe

/*
pertence(a,[b,c,d,e,a]).

pertence(a,[b,c,d,e]).

*/

/*
FATORIAL: 

- Tudo que for maior que zero é necessário calcular o N-1
	e ir multiplicando um pelo outro bottom up

fatorial(5, X)
fatorial(4, X)
fatorial(3, X)
fatorial(2, X)
fatorial(1, X)
fatorial(0, 1)
fatorial(1, 1) = 1
fatorial(2, 1) = 2
fatorial(3, 2) = 6
fatorial(4, 6) = 24
fatorial(5, 24) = 120
*/

fatorial(0, 1).
fatorial(N, F) :- 
	N > 0,
	N1 is N - 1,
	fatorial(N1, F1),
	F is N * F1
.