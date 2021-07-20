function deleteNamespace(nm)
global namespace

if nargin==0
    [~,nm] = fileparts(pwd);
else
    [~,nm] = fileparts(fileparts(which(nm)));
end

k = find(strcmp(namespace, nm));
namespace(k) = [];


