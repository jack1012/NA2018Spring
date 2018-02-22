%% Programming of Numerical Analysis HW03

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
int_p  = 1.5;


%% ======= Part 1: Fixed-Point Iteration Method =================

p1 = FixedPointIteration( 'g1', int_p, TOL, Max_N ); 
% You need compele FixedPointIteration.m

fprintf('Program paused. Press enter to continue.\n');
pause;


%% ============== Part 2: Different equations ================

p2 = FixedPointIteration( 'g2', int_p, TOL, Max_N ); 
p3 = FixedPointIteration( 'g3', int_p, TOL, Max_N ); 
p4 = FixedPointIteration( 'g4', int_p, TOL, Max_N ); 
p5 = FixedPointIteration( 'g5', int_p, TOL, Max_N ); 


fprintf('Program paused. Press enter to continue.\n');
pause;


%% =============== Part 3: Functions converge====================
% Plot Seriers of iterating functions 
% You don't need to change any codes at this part.
fprintf('Plot Seriers of iterating functions\n');

t = linspace(0,102,103);
figure()
hold on;
plot(t(1:size(p3,1)),p3, 'r-');
plot(t(1:size(p4,1)),p4, 'g-');
plot(t(1:size(p5,1)),p5, 'b-');
legend('g3','g4','g5');
xlabel('t');
ylabel('value of g');
hold off;


fprintf('Program paused. Press enter to continue.\n');
pause;


