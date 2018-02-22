function p_series = FalsePosition( f, p0,p1 ,TOL, N )
% FalsePosition Computed the root of f(x)=0 by using FalsePosition method
% Input:
%       f: nonlinear function
%      p0: initial value in [a, b]
%      p1: first value in [a, b]
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
   % This is same as Secant Method

    p=0;
    q=feval(f, p);



   % ============================================================% 
     fprintf('%2.0f    %14.9e     %14.9e    \n',it, p, q);
     p_series = [p_series ;p];  %±Np¨Ì§Ç¦s¤J
     it =it+1;

   % ====================== YOUR CODE HERE ======================% 
   % This is different with Secant Method




   % ============================================================% 

end

if it > N 
    fprintf('The method failed after %3d iterations\n', it-1);
end

