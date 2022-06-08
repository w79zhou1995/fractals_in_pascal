%% Function to create plot of Pascal's triangle
% PascalModP(n, p) will plot the first n rows of
% Pascal's triangle (mod p)
function PascalModP(n, p)
format long;
close all;
pascal = ones(n,n);

% create Pascal's triangle (mod p)
for i=2:n
    for j=2:n
        pascal(i,j)=mod(pascal(i-1,j)+pascal(i,j-1),p);
    end
end

j=n;
for i=1:n
    for k=1:j
        x1 = i;
        y1 = k;
        x2 = i+1;
        y2 = k;
        x3 = i+1;
        y3 = k+1;
        x4 = i;
        y4 = k+1;
        
        % plot using squares
        X = [x1 x2 x3 x4 x1];
        Y = [y1 y2 y3 y4 y1];
        
        % plot nonzero entries
        if (pascal(i,k)) ~= 0
            fill(X,Y, ,'LineStyle','none'); 
            hold on;
        end
    end
    j = j-1;
end

hold off;
axis equal;