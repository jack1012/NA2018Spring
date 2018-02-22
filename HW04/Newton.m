function p_series = Newton( f, p0,TOL, N )
% Newton Computed the root of f(x)=0 by using Newton method
% Input:
%       f: nonlinear function
%      p0: initial value in [a, b]
%     TOL: stop tolerance
%       N: maximum number of iterations
% Output:
%    p_series: series of approximate solution


it   = 0; 
p_series = p0 ;
q0= feval(f, p0);

fprintf(' The Iterating Function is %s.\n', f);
fprintf(' k        p_k             f(p_k)\n');
fprintf('------------------------------------------------------------------\n');
fprintf('%2.0f    %14.9e  %14.9e  \n',it, p0, q0);

it   = 1; 
while ( it <= N)
    [f_val, df_val]   = feval(f, p0);

   % f_val is f(p0), df_val is f'(p0)
   % ====================== YOUR CODE HERE ======================% 

    p=0;
    q=feval(f, p);



   % ============================================================% 
     fprintf('%2.0f    %14.9e  %14.9e  \n',it, p, q);
     p_series = [p_series ;p];  %±Np¨Ì§Ç¦s¤J
     it =it+1;
     
    p0=p;
    
end

if it > N 
    fprintf('The method failed after %3d iterations\n', it-1);
end

