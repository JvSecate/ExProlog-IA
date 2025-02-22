num(N,positivo) :- N>0, !.
num(0,nulo), !.
num(N,negativo) :- N<0.

% 3.2- O predicado possui tr�s regras que deveriam s�o mutuamente
% exclusivas e, portanto, apenas uma delas ter� sucesso. Por�m n�o
% utiliza cortes para parar a consulta caso alguma das regras sejam
% verdadeiras.
