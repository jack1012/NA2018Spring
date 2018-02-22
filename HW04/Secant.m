function p_series = Secant( f, p0, p1 ,TOL, N )
% Secant Computed the root of f(x)=0 by using Secant method
% Input:
%       f: nonlinear function
%      p0: initial value 
%      p1: first value 
%     TOL: stop tolerance
%       N: maximum number of iterations
% Output:
%    p_series: series of approximate solution


 
p_series = [p0; p1];

q0 = feval(f, p0);
q1 = feval(f, p1);

fprintf(' The Iterating Function is %s.\n', f);
fprintf(' k        p_k             f(p_k)\n');
fprintf('------------------------------------------------------------------\n');
fprintf('%2.0f    %14.9e     %14.9e    \n',0, p0,q0);
fprintf('%2.0f    %14.9e     %14.9e    \n',1, p1,q1);

it   = 2;
while ( it <= N)
    q0 = feval(f, p0);
    q1 = feval(f, p1);
   % ====================== YOUR CODE HERE ======================% 

    p=0;
    q=feval(f, p);



   % ============================================================% 
     fprintf('%2.0f    %14.9e     %14.9e    \n',it, p, q);
     p_series = [p_series ;p];  %±Np¨Ì§Ç¦s¤J
     it =it+1;
  
     p0=p1;
     q0=q1; 
     p1=p;
     q1=feval(f, p1);
 
end

if it > N 
    fprintf('The method failed after %3d iterations\n', it-1);
end

