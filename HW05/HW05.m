%% Programming of Numerical Analysis HW05   Hornor's method & Muller's method

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
int_p  = 1;
%% ======= Part 0: nth-degree polynomial.  ===================

fprintf(' Example : x^4 - 2x^3 - 4x^2 + 4x + 4:. Please input: [1,-2,-4,4,4]\n' );

[ p , q ] = Hornor( [1,-2,-4,4,4] , 2 );

fprintf(' P(2) is %f. Q(2) is %f \n', p,q);
fprintf(' The corret answer P(2) is -4 . Q(2) is -4 \n');

fprintf('Program paused. Press enter to continue.\n');
pause;

%% ========== Part 1: Hornor's method ===============
fprintf('This part is  ueing Hornors method at x0.\n');

poly=input('Input Coefficient of polynmial:') ;
fprintf(' Your Input is ');

for ii = 1 :length(poly)-1;
    fprintf('%f*x^%d+', poly(ii),length(poly)-ii);
end
fprintf('%f \n', poly(length(poly)));

x0=input('Input x0 = ') ;
 
p1 = Hornor_Newton( poly , x0, TOL, Max_N ); 
% You just need compele Hornor.m.  Hornor_Newtion has done.

fprintf('Program paused. Press enter to continue.\n');
pause;


%% ======== Part 2: Muller's method 加分題==============
fprintf('This part is  Muller Method.\n');
p2 =  Muller( poly , 1,2,3 , TOL, Max_N ); 
% You need compele Muller.m 加分題

fprintf('Program paused. Press enter to continue.\n');
pause;

