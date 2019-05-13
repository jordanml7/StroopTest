function myExpFit(x,y)
% function myExpFit(x,y)
% Inputs: two vectors (two variables collected from data)
% Outputs: None (creates plot of two variables along with an exponential
% best fit line for said variables)

x = x(:);
y = y(:);

mat = [x y];
[~,I] = sort(mat(:,1));
matsort = mat(I,:);
x = matsort(:,1);
y = matsort(:,2);

ylog = log(y);
n = length(x);

a1 = (n*sum(x.*ylog)-sum(x)*sum(ylog))/(n*sum(x.^2)-(sum(x))^2);
a0 = mean(ylog)-a1*mean(x);

alpha = exp(a0);
beta = a1;

yExp = alpha*exp(beta*x);

St = sum((y-mean(y)).^2);
Sr = sum((y-yExp).^2);

Rsq = (St-Sr)/St;

plot(x,yExp,x,y,'o');
s = sprintf('r^2 :: %d',Rsq);
title(s);

end