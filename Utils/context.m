function c = context()
global namespace

fprintf('In context:\n');

c = '';
s = dbstack();
if isempty(s)
    return;
end


for jj = length(s):-1:1
    fprintf('  s(%d).file = %s:\n', jj, s(jj).file);
    fprintf('  s(%d).name = %s:\n', jj, s(jj).name);

    try
        [~,p] = fileparts(fileparts(filesepStandard(which(s(jj).file))));
    catch
        continue
    end
    for ii = 1:length(namespace)
        fprintf('  namespace{%d} = %s:\n', ii, namespace{ii});
        if ~isempty(find(strcmp(p, namespace{ii})))
            c = namespace{ii};
            return;
        end
    end
    fprintf('\n');
end


