function x = GE_vector( A, b )
%GE_sol Summary of this function goes here
%   Detailed explanation goes here
%Input
%A  =  [1,1, 0,1;2 ,1 ,-1 ,1;-1, 2, 3, -1;3 ,-1, -1, 2];
%b  =  [2 ;1;4;-3];
%x  =  [-1; 2; 0; 1];
n  =  size(b,1);

%Output
x  =  zeros(n,1);

%Algorithm Solving Ax=b 

C  =  cat(2,A,b) ;     % C¬O¼W¼s¯x°}

%Part_I¡GGE_Upper_Triangluar_Matrix
% ====================== YOUR CODE HERE ======================%


% =============================================================%

%Part_II¡GBackward_substitution
% ====================== YOUR CODE HERE ======================%


% =============================================================%
end

