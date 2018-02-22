function p_series = bisection( f, a, b,TOL, N )
% Computed the root of f(x)=0 by using bisection method
% Input:
%       f: nonlinear function
%       a: interval [a, b]
%       b: interval [a, b]
%  TOL: stop tolerance
%      N: maximum number of iterations
% Output:
%    p_series: series of approximate solution


it   = 1; 
p_series =a ;
FA = feval(f, a);


fprintf(' k        a_k                  b_k                  p_k                 f(p_k) \n');
fprintf('------------------------------------------------------------------\n');

while ( it <= N)
    p   = (a+b)/2;
    FP = feval(f, p);
    % 參考虛擬碼撰寫程式碼，判斷是否停下來，使用break來停止迴圈
    
    
    %
    fprintf('%2.0f    %10.8f  %10.8f  %10.8f   %14.8e \n',it, a,b,p, FP);
    p_series = [p_series ;p];   %將p依序存入
    it =it+1;
    % 參考虛擬碼撰寫程式碼，判斷新的a,b
    
    
    %
          
end

