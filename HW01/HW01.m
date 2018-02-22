%% Programming of Numerical Analysis

%  Instructions
%  ------------
%   Pleaze fill in  name and student ID
%   Name:
%   Student ID: 
%  
%  For this exercise, you will not need to change any code in this file,
%  or any other files name.

%% Initialization
clear ; close all; clc

n  = 10^4;
s1 = zeros(n,1);
s2 = zeros(n,1);

%% ==================== Part 1: Harmonic series ====================

sum = 0;
for ii = 1:n
    sum    = 0 ;    % You need to fill in this code.
    s1(ii) = sum;
end

fprintf('n = 10        s1_n = %10f \n', s1(10) );
fprintf('n = 10^2   s1_n = %10f \n', s1(100) );
fprintf('n = 10^3   s1_n = %10f \n', s1(1000) );
fprintf('n = 10^4   s1_n = %10f \n', s1(10000) );
fprintf('Program paused. Press enter to continue.\n');
pause;


%% ======================= Part 2: P-sereies =======================

sum = 0;
for ii = 1:n
    sum    = 0;   % You need to change this code.
    s2(ii) = sum;
end

fprintf('n = 10        s2_n = %10f \n', s2(10) );
fprintf('n = 10^2   s2_n = %10f \n', s2(100) );
fprintf('n = 10^3   s2_n = %10f \n', s2(1000) );
fprintf('n = 10^4   s2_n = %10f \n', s2(10000) );
fprintf('Program paused. Press enter to continue.\n');
pause;


%% ======================= Part 3: Plot the graph =======================
% Plot Data
%
fprintf('Plot the graph\n');

x = 1:n;

figure()
subplot(1,2,1); semilogx(x,s1 ,'b', x, log(x),      'r-' ); 

y = ones(n,1)*(pi^2)/6;
subplot(1,2,2); semilogx(x,s2 ,'b', x, y, 'r-' );

fprintf('Program paused. Press enter to continue.\n');
pause;


