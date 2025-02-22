joga(ana,volei).
joga(bia,tenis).
joga(ivo,basquete).
joga(eva,volei).
joga(leo,tenis).


% Call: (11) joga(_27376, _27378) ? creep
%   Exit: (11) joga(ana, volei) ? creep
%   Call: (11) joga(leo, volei) ? creep
%   Fail: (11) joga(leo, volei) ? creep
%   Redo: (11) joga(_27376, _27378) ? creep
%   Exit: (11) joga(bia, tenis) ? creep
%   Call: (11) joga(leo, tenis) ? creep
%   Exit: (11) joga(leo, tenis) ? creep
%   Call: (11) bia\=leo ? creep
%   Exit: (11) bia\=leo ? creep
%P = bia,
%X = tenis ;
%   Redo: (11) joga(_27376, _27378) ? creep
%   Exit: (11) joga(ivo, basquete) ? creep
%   Call: (11) joga(leo, basquete) ? creep
%   Fail: (11) joga(leo, basquete) ? creep
%   Redo: (11) joga(_27376, _27378) ? creep
%   Exit: (11) joga(eva, volei) ? creep
%   Call: (11) joga(leo, volei) ? creep
%   Fail: (11) joga(leo, volei) ? creep
%   Redo: (11) joga(_27376, _27378) ? creep
%   Exit: (11) joga(leo, tenis) ? creep
%   Call: (11) joga(leo, tenis) ? creep
%   Exit: (11) joga(leo, tenis) ? creep
%   Call: (11) leo\=leo ? creep
%   Fail: (11) leo\=leo ? creep
%false.

%   Call: (11) joga(leo, _50894) ? creep
%   Exit: (11) joga(leo, tenis) ? creep
%   Call: (11) joga(_50898, tenis) ? creep
%   Exit: (11) joga(bia, tenis) ? creep
%   Call: (11) bia\=leo ? creep
%   Exit: (11) bia\=leo ? creep
%X = tenis,
%P = bia ;
%   Redo: (11) joga(_50898, tenis) ? creep
%   Exit: (11) joga(leo, tenis) ? creep
%   Call: (11) leo\=leo ? creep
%   Fail: (11) leo\=leo ? creep
%false.

% 3.1- Consulta b). Pois define X como tenis primeiro e procura outra
% cláusula onde X = tenis.
% Enquanto a consulta a) Utiliza todas as cláusulas.



