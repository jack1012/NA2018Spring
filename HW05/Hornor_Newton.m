function p_series = Hornor_Newton( poly , p0, TOL, N )
% Newton Computed the root of f(x)=0 by using Hornor method
% Input:
%    poly: Cofficents of polynimail 
%      p0: initial value in [a, b]
%     TOL: stop tolerance
%       N: maximum number of iterations
% Output:
%    p_series: series of approximate solution


it   = 0; 
p_series = p0 ;

fprintf(' The Iterating Function is %s.\n', poly);
fprintf(' k        p_k             f(p_k)\n');
fprintf('------------------------------------------------------------------\n');
q0= Hornor(poly, p0);
fprintf('%2.0f    %14.9e  %14.9e  \n',it, p0, q0);
it   = 1; 

while ( it <= N)
    [f_val, df_val]   = Hornor(poly, p0);
    % 
    p= p0 - f_val/df_val;
    q= Hornor(poly, p);
    if (abs(p-p0) < TOL)
         fprintf('%2.0f    %14.9e  %14.9e  \n',it, p, q);
         p_series = [p_series ;p];  %將p依序存入
        break;
    end
   % 
     fprintf('%2.0f    %14.9e  %14.9e  \n',it, p, q);
     p_series = [p_series ;p];  %將p依序存入
     it =it+1;
   %  
    p0=p;
   % 
end

if it > N 
    fprintf('The method failed after %3d iterations\n', it-1);
end

