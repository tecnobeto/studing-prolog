%Listas

/*
[]. vazia
[X] pelo menos um elemento
[X|Y]. cabeca e calda
[X,Y]. lista existem exatamente dois elementos
[X, Y|Z]. 
[[X,Y], [Z,K]] Elementos da lista e tem dois valores

*/

compra([ananas, banana, manga, pera, uva]).

nomes([ana, bela, carla, dina, fefa]).

inserir(X,Y,[X|Y]).



/*
- CONSULTAS

	Retorna a cabeça e a calda da lista de compras
	compra([X|Y]).

	Retorna a cabeça e calda da lista de nomes
	nomes([X|Y]).

	Só a cabeca
	nomes([X|_]).

	Lista sem cabeca
	nomes([_|Y]).


- INSERÇÕES
	
	inserção de elemento na lista retornando em L
	inserir(humb,[avers,lover,jungs],L).

	lista na cabeca com um array retornando em L
	inserir([a,c,v,b,a,s,d],[avers,lover,jungs],L).


*/


/* 
CONCATENANDO LISTAS

con([1,2], [3,4], L).
con(L1, L2, [3,4,5,6,7,8,9]).
*/

con([], L, L).
con([X|L1], L2, [X|L3]) :- con(L1, L2, L3).



/*
TAMANHO LISTA

tamanho([a,b,c,x,a,s,f,s], Tamanho).
*/

tamanho([], 0).
tamanho([X|Y], N) :- 
	tamanho(Y,T),
	N is T + 1.





