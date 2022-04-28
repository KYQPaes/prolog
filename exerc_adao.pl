pai(adao, cain).
pai(adao, abel).
pai(adao, seth).
pai(seth, enos).
%filho(abel, adao).
%filho(cain, adao).
%filho(seth, adao).
%filho(enos, seth).
%irmao(cain, abel).
%irmao(cain, seth).
%irmao(abel, seth).
%irmao(abel, cain).
%irmao(seth, cain).
%irmao(seth, abel).
filho(X, Z) :- pai(Z, X).
irmao(X, Z) :- pai(Y, Z), pai(Y, X), X\=Z.
