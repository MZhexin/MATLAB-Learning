%% 函数
% 函数一般定义在单独的文件中（就像本文件一样）
% 如果写在脚本里，则必须定义在文件的末尾


% 函数格式：
% function 输出形式参数表=函数名(输入形式参数表)
%          注释部分
%          函数体语句
% end


% 函数内部可以递归调用自己


function f=factorialfunc(n)
    if n<=1
        f = 1;
    else 
        f = factorialfunc(n-1) * n;
    end