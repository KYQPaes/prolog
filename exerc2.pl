sexo(maria, mulher).
sexo(jose, homem).
sexo(bob, homem).
sexo(liz, mulher).
sexo(ana, mulher).
sexo(paty, mulher).
sexo(joel, homem).
pai(maria, bob).
pai(jose, bob).
pai(bob, ana).
pai(bob, paty).
pai(jose, liz).
pai(liz, joel).
filho(X, Z) :- pai(Z, X).
irmao(X, Z) :- pai(Y, X), pai(Y, Z), X\=Z.
tia(X, Z) :- sexo(X, mulher), pai(Y, Z), irmao(X, Y).
tio(X, Z) :- sexo(X, homem), pai(Y, Z), irmao(X, Y).
primos(X, Z) :- tia(Y, Z), pai(Y, X).
primos(X, Z) :- tio(Y, Z), pai(Y, X).

