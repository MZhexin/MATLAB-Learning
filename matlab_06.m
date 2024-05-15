%% MATLAB 函数

% 函数的调用格式
% [输出形式参数表]=函数名(输入形式参数表)

% 调用写好的factorialfunc函数
 s = 0;
 n = input('请输入n: ');
 for i=1:n
     s = s + factorialfunc(i);
 end
 fprintf('1到 %s 的阶乘的和为：%s\n', num2str(n), num2str(s));


% 可变参数
% 三次调用varfun.m文件中的varfun函数，每次输入不同个数的参数，返回的结果不一样
x1 = varfun(1:3);
x2 = varfun(1:3, 23:25);
x3 = varfun(1:3, [23;24;25], 0.1);
fprintf('一个参数：%s\n', num2str(x1));
fprintf('两个参数：%s\n', num2str(x2));
fprintf('三个参数：%s\n', num2str(x3));


% 匿名函数：特殊的函数形式，不存储为函数文件
% 格式：函数句柄=@(匿名函数形参表) 匿名函数表达式
% @是创建函数句柄的运算符，匿名函数的形参是匿名函数表达式中的自变量

% 创建匿名函数
func1 = @(x) 3 * x .* x + 5 * x + 6;
func2 = @(x, y) x .* x - y .* y;

% 匿名函数1
a1 = 1:1:4;
c = func1(a1);
fprintf('func1: %s\n', num2str(c));

% 匿名函数2
a = 7:10;
b = 1:4;
z = func2(a, b);
fprintf('func2: %s\n', num2str(z));