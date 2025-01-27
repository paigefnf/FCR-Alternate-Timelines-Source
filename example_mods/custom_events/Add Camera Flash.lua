function onEvent(name, value1, value2)
if name == "Add Camera Flash" then
if value2 == 'BLACK' then
cameraFlash('camOther','000000', 1, true)
end
if value2 == 'WHITE' then
cameraFlash('camOther','ffffff', 1, true)
end
if value2 == 'RED' then
cameraFlash('camOther','ff0000', 1, true)
end
if value2 == '' then
cameraFlash('camOther','ffffff', tonumber(value1), true)
end
if value2 == '' then
if value1 == '' then
cameraFlash('camOther','ffffff', 1, true)
end
end
end
end