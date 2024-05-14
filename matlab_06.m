%% 函数

% 函数的调用格式
% [输出形式参数表]=函数名(输入形式参数表)

% 调用写好的factorialfunc函数
s = 0;
n = input('请输入n: ');
for i=1:n
    s = s + factorialfunc(i);
end
fprintf('1到 %s 的阶乘的和为：%s\n', num2str(n), num2str(s));
