function result = getL(obj)
% GETL gets a json list
% Result is returned as a struct.

resultJ = obj.Handle.getL();
jsonJ =  org.json.JSONArray(resultJ);
jsonTextJ = jsonJ.toString();

result = jsondecode(char(jsonTextJ));

end
