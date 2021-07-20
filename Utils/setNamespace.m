function setNamespace(nm)
global namespace
N = 2;

fprintf('In setNamespace:\n');

if nargin==0
    [~,nm] = fileparts(pwd);
else
    [~,nm] = fileparts(fileparts(which(nm)));
end

if ~iscell(namespace)
    namespace = {};
end
if length(namespace) >= N
    namespace = {};
end
if ~isempty(find(strcmp(namespace, nm)))
    return
end

idx = mod(length(namespace), N+1)+1;
namespace{idx} = nm;

fprintf('  namespace = %s\n', namespace{1});

