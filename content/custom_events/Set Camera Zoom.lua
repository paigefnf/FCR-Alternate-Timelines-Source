function onEvent(name,value1,value2)
if name == "Set Camera Zoom" then
if value2 == '' then
setProperty("defaultCamZoom",value1)
doTweenZoom('p','camGame',tonumber(value1),0.00001,'sineInOut')
else
setProperty("defaultCamZoom",value1)
doTweenZoom('p','camGame',tonumber(value1),tonumber(value2),'sineInOut')
end            
end
end