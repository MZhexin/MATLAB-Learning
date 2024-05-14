%% MATLAB 程序控制结构

% inpu函数
A = input('请输入A矩阵');        % 这里需要按照矩阵创建表达式来输入
name = input('请输入你的名字');   % 如果要输入字符串，则需要用单引号或双引号括起来

% disp函数用于在命令行显示变量和表达式的值
disp(A);

%% 选择（if、switch和try）

% if（记得用end结尾）
% 建议条件表达式中尽量使用标量
x = input('请输入x的值：');
if x < 0
    y = abs(x);
elseif x < 10
    y = sin(x) ./ (x + 1);
elseif x > 15 && x < 20             % 逻辑运算符 && 和 ||
    y = power(x, 3);
else 
    y = (3 + 2 * x) .* log(x);
end
disp(y);

% switch
c = input('请输入一个字符：', 's');
switch c
    case num2cell('A':'Z')
        disp(lower(c));
    case num2cell('a':'z')
        disp(upper(c));
    case num2cell('0':'9')
        disp((c - '0')^2);
    otherwise
        disp(c);
end

% try：捕捉报错，将错误信息赋值给catch后的变量并执行catch下的代码块
A = input('请输入A矩阵：');
B = input('请输入B矩阵：');
try
    C = A * B;
    disp(C);
catch err
    disp(err.message);  % 如果try后面的语句有问题，会返回报错信息（e.g. 内部矩阵维度必须一致）
end


%% 循环结构

% for循环：for 循环变量 = 表达式1:表达式2:表达式3
% 示例：典中典之水仙花数
shu = [];
for n=100:999
    n1 = fix(n/100);
    n2 = mod(fix(n/10), 10);
    n3 = mod(n, 10);
    if n==n1*n1*n1+n2*n2*n2+n3*n3*n3
        shu = [shu, n];
    end
end
disp(shu)

% for循环的另一种用法
% for 循环变量 = 矩阵，该方法每次都读取矩阵的列向量
s = 0;
a = [1, 2, 3, 4; 
     31, 41, 51, 61;
     101, 102, 103, 104];
for k=a
    % 在这里，k为[1;31;101],[2;41;102],[3;51;103]和[4;61;104]
    s = s + k;
end
disp(s);

% while循环
% 求满足不等式1/1^2 + 1/2^2 + ... + 1/n^2 > 15的最小的n
y = 0;
n = 0;
while (y < 15)
    n = n + 1;
    y = y + 1 / n / n;
end
disp('满足条件的n是：', num2str(n));

