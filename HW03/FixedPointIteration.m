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
   % �Ѧҵ����X���g�{���X�A�P�_�O�_���U�ӡA�ϥ�break�Ӱ���j�� 
    
   
   
   % 
     fprintf('%2.0f    %14.9e  %14.9e  \n',it, p0, p);
     p_series = [p_series ;p];  %�Np�̧Ǧs�J
     it =it+1;
   % �Ѧҵ����X���g�{���X�A��sp0  
    
   % 
end

if it > N 
    fprintf('The method failed after %3d iterations\n', it-1);
end

