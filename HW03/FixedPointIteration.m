function p_series = FixedPointIteration( f, p0,TOL, N )
% FixedPointIteration Computed the root of f(x)=0 by using FixedPointIteration method
% Input:
%       f: nonlinear function
%      p0: initial value in [a, b]
%     TOL: stop tolerance
%       N: maximum number of iterations
% Output:
%    p_series: series of approximate solution


it   = 0; 
p_series = p0 ;

fprintf(' The Iterating Function is %s.\n', f);
fprintf(' k        p_k            f(p_k) \n');
fprintf('------------------------------------------------------------------\n');

while ( it <= N)
    p   = feval(f, p0);
   % 參考虛擬碼撰寫程式碼，判斷是否停下來，使用break來停止迴圈 
    
   
   
   % 
     fprintf('%2.0f    %14.9e  %14.9e  \n',it, p0, p);
     p_series = [p_series ;p];  %將p依序存入
     it =it+1;
   % 參考虛擬碼撰寫程式碼，更新p0  
    
   % 
end

if it > N 
    fprintf('The method failed after %3d iterations\n', it-1);
end

