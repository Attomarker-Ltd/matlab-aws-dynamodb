function result = getM(obj)
% GETM gets a json structure
% Result is returned as a struct.

resultJ = obj.Handle.getM();
jsonJ =  org.json.JSONObject(resultJ);
jsonTextJ = jsonJ.toString();

result = jsondecode(char(jsonTextJ));

end
