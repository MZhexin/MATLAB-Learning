%% MATLAB 图像绘制

%% 二维曲线绘制
% plot
t = linspace(0, 2*pi, 200);
x = sin(t) + sin(2*t);
y = cos(t) - cos(2*t);
plot(x, y);

% 一张图内画多条曲线
x_1 = linspace(0, 2*pi, 100);
y_1 = sin(x_1);
plot([x_1; x_1; x_1]', [y_1; y_1*2; y_1*3]');

% 该命令也可以被写成以下形式
plot(x_1, [y_1; y_1*2; y_1*3]);

% plot比较吃自定义的采样间隔
% MATLAB推出fplot函数，可以自适应地采样
% 调用格式：fplot(函数, 取值范围)
fplot(@(x)sin(x.^2)./x, [0, 4*pi]);

% fplot多使用隐函数，如果遇到隐函数不好表达的函数形式，则可以使用fimplicit函数
% 调用格式：fimplicit(函数, [a, b, c, d])
% 其中a和b是x轴的取值范围，c和d是y轴的取值范围
% 若省略cd，则默认cd和ab的值一样；若省略ab，则默认[-5, 5]
fimplicit(@(x, y) x.*x.*x+y.*y.*y-5*x.*y+1/5);

% 曲线样式查表即可
