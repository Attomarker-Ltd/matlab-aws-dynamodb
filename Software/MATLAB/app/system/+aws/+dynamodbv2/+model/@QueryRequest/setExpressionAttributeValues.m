function setExpressionAttributeValues(obj, expressionAttributeValues)
% SETEXPRESSIONATTRIBUTEVALUES One or more values that can be substituted in an expression

% Copyright 2019 The MathWorks, Inc.

if ~isa(expressionAttributeValues, 'containers.Map')
    logObj = Logger.getLogger();
    write(logObj,'error','expressionAttributeValues argument not of type containers.Map');
end

keys = expressionAttributeValues.keys();
values = expressionAttributeValues.values();
hMapJ = java.util.HashMap;
for n = 1:numel(keys)
    % add an entry to the HashMap per iteration
    hAttributeMapJ = java.util.HashMap;
    % TODO remove hardcoded "S" which should be
    % set depending on the type of `values{n}` use `class`?
    hAttributeMapJ.put("S", values{n});
    hMapJ.put(keys{n}, hAttributeMapJ);
end

obj.Handle.setExpressionAttributeValues(hMapJ);

end
