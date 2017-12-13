/*
Primo
- Verifica se existe um fator além do próprio número
(Se existe alguém que divide o número)
- Caso não haja e seja maior que 3 então é Primo
*/


tem_fator(N, L) :- N mod L =:= 0. % Verifica se é N é divisivel por L se for, tem um fator que divide
tem_fator(N, L) :- L * L < N, L2 is L + 2, tem_fator(N, L2). % Multiplica por um ímpar, soma mais dois caso seja menor que o numero, e busca mais uma vez por um fator, só que o próximo ímpar

/*
tem_fator(23, 3).
tem_fator(23, 5). para aqui pois não satisfaz mais a condição L*L
*/

eh_primo(2). 
eh_primo(3).
eh_primo(P) :- P > 3, P mod 2 =\= 0, \+tem_fator(P, 3). % Se o P>3 e não for par, e não houver nenhum fator além de um e ele mesmo.