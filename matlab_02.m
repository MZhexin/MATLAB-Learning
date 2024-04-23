%% MATLAB数组

% 创建数组（矩阵）
t0 = [1, 2, 3; 4, 5, 6; 7, 8, 9];

% 矩阵元素可以是复数
t1 = [1, 2+7i, 5*sqrt(-2); 3, 2.5i, 3.5+6i];

% 用冒号创建行向量，语法为a:b:c，其中a是初值，b是步长，c是终值
% 可以省略步长b，默认为1
t2 = 0:2:10;
t3 = 0:-2:-8;

% 典中典之linspace函数 ————>（初值，终值，元素个数）
t4 = linspace(0, 100, 10);

% logspace：对数等间距的行向量
t5 = logspace(1, 10, 10);


% 串联数组：数组的拼接
% 定义A和B
A = [1, 2, 3; 4, 5, 6; 7, 8, 9];
B = [11:13; 14:16; 17:19];
C = [A, B; B, A];  % 把AB矩阵拼成C矩阵


% size获取指定维度的大小
size_A = size(A);
size_A_dim_1 = size(A, 1);

% length获取最大维度的长度，numel获取元素个数
% length(A) 等价于 max(size(A))
len_A = length(A);
num_A = numel(A);


