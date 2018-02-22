%
function [A, b]= matgen_pde(n)
%
%  A matrix generator for the finite difference discretization of the Poisson equationsm.
%  Input: n is the number of equal subintervals of [0, 1].
%  Output: A is the (n-2)^2-by-(n-2)^2 coefficient matrix of the linear system Az = b.  
%

n2 = n - 2;  h1i = n-1;   
In2 = speye(n2);  
As = (h1i^2) * gallery('tridiag', n2, 1, -2, 1);
A = kron(As, In2) + kron(In2, As); 
A = full(A);

xi = linspace(0,1,n);
yi = linspace(0,1,n);
f = zeros(n,n);
b_mat = zeros(n-2,n-2);

[xx ,yy] = meshgrid(xi,yi);
f(:) = 2*xx.^2+2*yy.^2-2*xx-2*yy;

%    for ii = 1 : n
%        for jj = 1 : n
%            f(ii,jj)=2*xi(ii)^2+2*yi(jj)^2-2*xi(ii)-2*yi(jj);
%        end
%    end

b = reshape ( f(2:n-1,2:n-1) ,  (n-2)^2 , 1);
