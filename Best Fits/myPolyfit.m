function myPolyfit(x,y,polyOrder)
% function myPolyFit(x,y,polyOrder)
% Inputs: two vectors (two variables collected from data) and polyOrder
% (the order of the resulting best fit line)
% Outputs: None (creates plot of two variables along with a polynomial
% best fit line of order polyOrder for said variables)

x = x(:);
y = y(:);

[x1,~] = size(x);

mat = [x y];
[~,I] = sort(mat(:,1));
matsort = mat(I,:);
x = matsort(:,1);
y = matsort(:,2);

onevec = ones(x1,1);
A = onevec;

for k = 1:polyOrder
    A = [x.^k A];
end

coeff = A \ y;

yPoly = A * coeff;

St = sum((y-mean(y)).^2);
Sr = sum((y-yPoly).^2);

Rsq = (St-Sr)/St;

plot(x,yPoly,x,y,'o');
s = sprintf('r^2 :: %d',Rsq);
title(s);

end