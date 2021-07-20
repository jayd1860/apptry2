function  Buildme(targetname)
if nargin==0
    targetname = 'Apptry2GUI';
end
Buildexe(targetname,{'Install','setpaths.m'})

