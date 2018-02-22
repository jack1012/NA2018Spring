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

TOL      = 10^-4;
Max_N = 100;
int_a     = 1;
int_b     = 2;

%% ======= Part 1: Bisection Method =================

p = bisection( 'f', int_a, int_b,TOL, Max_N );      % You need compele bisection.m

fprintf('Program paused. Press enter to continue.\n');
pause;


%% ==== Part 2: Absolute error & Relative error ===========

p_val = 1.365230013;  % The correct value of p to 9 decimal places

[abs_err, rel_err] = ComputeError( p_val, p(end) ); % You need compele ComputeError.m

fprintf('Absolute error is  %14.9e \n', abs_err );
fprintf('Correct Abs_error is  1.177083125e-04\n');

fprintf('Relative error is   %14.9e \n', rel_err );
fprintf('Correct Rel_error is  8.621866746e-05\n');


fprintf('Program paused. Press enter to continue.\n');
pause;


%% =============== Part 3: EXERCISE 2.1-1 =======================
% Plot funtion
%
fprintf('Plot the function\n');

x = linspace(0,1,100);
y = sqrt(x)-cos(x);
o = zeros(1,size(x,2)); % x¶b
figure()
plot(x,y,x,o,'r-');

% Bisection Method for fun(x) = sqrt(x)-cos(x) =0;


p = bisection( 'fun', 0, 1,10^-6, 100 ); % You need compele Fun.m
p_val = 0.64171437;  % The correct value of p to 8 decimal places

fprintf('series of approximate solution  is \n' );
fprintf('%14.9e \n', p );
fprintf('Program paused. Press enter to continue.\n');
pause;


