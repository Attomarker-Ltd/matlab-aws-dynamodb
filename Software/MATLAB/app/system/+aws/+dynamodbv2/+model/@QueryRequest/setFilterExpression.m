function setFilterExpression(obj, filterExpression)
% SETFILTEREXPRESSION Condition that specifies key value(s) for items

% Copyright 2019 The MathWorks, Inc.

if ~ischar(filterExpression)
    % Create logger reference
    logObj = Logger.getLogger();
    write(logObj,'error','Expected filterExpression of type character vector');
end

obj.Handle.setFilterExpression(filterExpression)

end
