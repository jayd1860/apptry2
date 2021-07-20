function setpaths(o)
if ~exist('o','var')
    o = 1;
end

if o
    addpath(pwd,'-end')
    addpath([pwd,'/Install'],'-end');
    addpath([pwd,'/Utils'],'-end');
else
    rmpath(pwd)
    rmpath([pwd,'/Install']);
    rmpath([pwd,'/Utils']);
end


