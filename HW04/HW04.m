%% Programming of Numerical Analysis HW04

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

TOL    = 10^-10;
Max_N  = 100;
int_p  = pi()/4;
%% ======= Part 0: function of x  ===================

[fx, dfx] = f(0);

fprintf('f(0) is  %f6 ; df(0) is  %f  \n', fx, dfx );
fprintf('Correct f(0) is  1 ; df(0) is  -1\n');
fprintf('Program paused. Press enter to continue.\n');
pause;

%% ========== Part 1: Newton's Method ===============
fprintf('This part is Newton Method.\n');

p1 = Newton( 'f', int_p, TOL, Max_N ); 
% You need compele Newton.m

fprintf('Program paused. Press enter to continue.\n');
pause;


%% =========== Part 2: Secant  Method================
fprintf('This part is Secant  Method.\n');
p2 =  Secant( 'f', 0.5, pi()/4, TOL, Max_N ); 
% You need compele Secant.m

fprintf('Program paused. Press enter to continue.\n');
pause;


%% ======== Part 3: False Position Method===============
fprintf('This part is False Position Method.\n');
p3 =  FalsePosition( 'f', 0.5, pi()/4, TOL, Max_N ); 
% You need compele  FalsePosition.m

fprintf('Program paused. Press enter to continue.\n');
pause;