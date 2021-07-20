function [v, w] = funcCommonDiff(x, y)
if nargin==1
    y = 33;
end
v = x*y+77;
w = (y^3/x)+v;


