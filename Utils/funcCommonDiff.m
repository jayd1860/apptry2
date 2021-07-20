function [out1, out2] = funcCommonDiff(inp1, inp2)
out1 = [];
out2 = [];
c = context();
if isempty(c)
    return;
end
if strcmp(c, 'apptry1')
    if nargin == 0
        [out1] = funcCommonDiff_apptry1();
    elseif nargin == 1
        [out1] = funcCommonDiff_apptry1(inp1);
    end
elseif strcmp(c, 'apptry2')
    if nargin == 0
        [out1, out2] = funcCommonDiff_apptry2();
    elseif nargin == 1
        [out1, out2] = funcCommonDiff_apptry2(inp1);
    elseif nargin == 2
        [out1, out2] = funcCommonDiff_apptry2(inp1, inp2);
    end
end


% ---------------------------------------------------------
function [y] = funcCommonDiff_apptry1(x)
y = x+666;





% ---------------------------------------------------------
function [v, w] = funcCommonDiff_apptry2(x, y)
if nargin==1
    y = 33;
end
v = x*y+77;
w = (y^3/x)+v;


