%% MATLAB运算

% 矩阵除法
A = [3, 2, 3.5; 4, 5, 6; 0.7, 8, 9];
B = [1, 8, 7; 4, 5, 6; 7, 8, 9];

% 一般来说，A\B ≠ B/A
C1 = B/A;   % 右除，表示A的逆右乘B矩阵，即B*inv(A)
C2 = A\B;   % 左除，表示A的逆左乘B矩阵，即inv(A)*B


% 矩阵的幂运算（A^x，要求A是方阵，x是标量）
t = [1, 2, 3; 11, 12, 13; 7, 8, 9];
t_square = t^2;  % t^2 = t * t

% 若x为0，得到一个与A维度相同的单位矩阵
A_zero = A^0;

% 若x小于0，且A存在逆矩阵，则A^x=inv(A)^(-x)
A_neg = A^-1;


% 点运算，又称数组运算，是两个矩阵对应元素之间的运算
% 符号为.*、./、.\和.^四种（加减运算同+和-，因此没有单独的符号）
% .*：对应元素相乘
C3 = A.*B;

% .*具有广播机制
x1 = [1, 2, 3; 4, 5, 6];
y1 = [10, 20, 30];
z1 = x1.*y1;

% A./B表示A矩阵除以B矩阵的对应元素，A.\B表示B矩阵除以A矩阵的对应元素
% 因此，A./B = B.\A
y2 = [10, 20, 30; 0.1, 0.2, 0.3];
z2 = x1./y2;
z3 = y2.\x1;
if_z2_equ_z3 = isequal(z2, z3);  % 用isequal函数判断z2和z3一不一样

% A.^B，表示两矩阵对应元素做乘方运算
% 即，运算结果中，元素C(x,y)的值为元素A(x,y)的元素B(x,y)次方
x2 = [4, 5, 6, 7; 8, 9, 10, 11];
y3 = [4, 3, 2, 1; -1, 2, -1, 2];
z4 = x2.^y3;
