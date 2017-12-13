/*
MDC com algoritmo de Euclides

Recebe 3 parametros:
- Número 1 (A)
- Número 2 (B)
- Resultado (M)
mdc(A,B,M)

Se A > B então
	- mdc(A,B,M)
Se A < B então
	- mdc(B,A,M)
Se M =:= 0 entao
	- M is A

Para fazer o mdc é só:
	- M is A mod B

*/


mdc(A,0,M) :- M is A.
mdc(A,B,M) :- A >= B, X is A mod B, mdc(B, X, M).
mdc(A,B,M) :- A < B, X is B mod A, mdc(A, X, M).