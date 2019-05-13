function myPowFit(x,y)
% function myPowFit(x,y)
% Inputs: two vectors (two variables collected from data)
% Outputs: None (creates plot of two variables along with a power
% best fit line for said variables)

x = x(:);
y = y(:);

mat = [x y];
[~,I] = sort(mat(:,1));
matsort = mat(I,:);
x = matsort(:,1);
y = matsort(:,2);

xlog = log(x);
ylog = log(y);
n = length(x);

a1 = (n*sum(ylog.*xlog)-sum(ylog)*sum(xlog))/(n*sum(xlog.^2)-(sum(xlog))^2);
a0 = mean(ylog)-a1*mean(xlog);

alpha = exp(a0);
beta = a1;

yPow = alpha*x.^beta;

St = sum((y-mean(y)).^2);
Sr = sum((y-yPow).^2);

Rsq = (St-Sr)/St;

plot(x,yPow,x,y,'o');
s = sprintf('r^2 :: %d',Rsq);
title(s);

end