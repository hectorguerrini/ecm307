function [t1,t2] = desempenho(vetor)
% Determina o tempo de execução

%% usando a estrutura for.
tic;
start = tic;
M = length(vetor);
for k=1:M
    if vetor(k)>1
        aux1(k)=1;
    else
        aux1(k)=0;
    end
end
toc;

t1 = toc(start);
%% usando o kernel matlab
tic;
start = tic;
aux2 = vetor>1;
toc;
t2 = toc(start);