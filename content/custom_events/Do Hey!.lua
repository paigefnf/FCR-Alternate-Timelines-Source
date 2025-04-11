function onEvent(name, value1, value2)
if name == "Do Hey!" then
if value1 == 'bf' then
characterPlayAnim('bf','hey',true)
setProperty('bf.specialAnim',true)
end
if value1 == 'dad' then
characterPlayAnim('dad','hey',true)
setProperty('dad.specialAnim',true)
end
if value1 == 'gf' then
characterPlayAnim('gf','hey',true)
setProperty('gf.specialAnim',true)
end
end
end