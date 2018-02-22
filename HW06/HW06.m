%% Programming of Numerical Analysis HW06   Gaussian Elimination

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




%% ======= Part 0: nth-degree polynomial.  ===================

A    = 0 ;          %�u�ʨt�� �Y�Ưx�} 
b    = 0 ;          %�u�ʨt�� �`�ƦV�q
C    = cat(2,A,b);  %�u�ʨt�� �W�s�x�} 

fprintf('C = A|b = \n');
C

fprintf('Program paused. Press enter to continue.\n');


pause;

%% ========== Part 1: Gaussian Elimination ===============
fprintf('This part is  ueing Gaussian Elimination.\n');

x1 = GE(A,b);
% You need compele GE.m.

fprintf('Program paused. Press enter to continue.\n');
pause;


%% ===== Part 2: Gaussian Elimination Vector Version===========
fprintf('This part is  ueing Gaussian Elimination  Vector Version.\n');

x2 = GE_vector(A,b);
% You need compele GE_vector.m.

fprintf('Program paused. Press enter to continue.\n');
pause;


%% ===== Part 3: Gaussian Elimination Matrix Version===========
fprintf('This part is  ueing Gaussian Elimination Matrix Version.\n');

x3 = GE_matrix(A,b);
% You need compele GE.m.

fprintf('Program paused. Press enter to continue.\n');
pause;

%% ===== Part 4: Solve the Linear Systems===========

[M,b] = matgen_pde(64);
t0 = clock;			           % �O���{�b���ɶ�
z = GE(M,b);		           % �������h�k�ѽu�ʨt��
elapsedTime = etime(clock, t0) % �p��үӶO���`�ɶ�

