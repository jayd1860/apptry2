function [out1] = getAppDir()
out1 = [];
c = context();
if isempty(c)
    return;
end
if strcmp(c, 'apptry1')
    if nargin == 0
        [out1] = getAppDir_apptry1();
    end
elseif strcmp(c, 'apptry2')
    if nargin == 0
        [out1] = getAppDir_apptry2();
    end
end


% ---------------------------------------------------------
function [p] = getAppDir_apptry1()

d = which('Apptry1GUI');
p = fileparts(d);



% ---------------------------------------------------------
function [p] = getAppDir_apptry2()

d = which('Apptry2GUI');
p = fileparts(d);

