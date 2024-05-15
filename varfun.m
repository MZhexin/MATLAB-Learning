%% 可变参数函数

% 数值变量nargin和nargout分别存储输入实参和输出实参的个数
% 单元数组varargin和varargout分别存储输入实参传递的数据和输出实参对应的变量

function fout=varfun(varargin)
if nargin==1
    fout = varargin{1}.^2;
elseif nargin==2
    fout = 1 ./ (varargin{1} + varargin{2});
elseif nargin==3
    fout = power(varargin{1} * varargin{2} * varargin{3}, 3);
end