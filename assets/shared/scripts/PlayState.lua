function onCountdownTick(count)
if count == 1 then
end
end
function onCreatePost()
setProperty('camZooming',true)
end
beat = 1
addzoom = 1
function onTweenCompleted(name)
if name == 'camGametweenzoom' then
setProperty('defaultCamZoom',getProperty('camGame.zoom'))
end
end
followy = 0
followx = 0
function onEvent(name,value1,value2)
if name == 'Set Camera Zoom' then
doTweenZoom('camGametweenzoom','camGame',value1,value2,'')
if value2 == '' then
setProperty('defaultCamZoom',value1)
end
end
if name == 'Zoom Per Beat' then
if value1 == '0' then
zoombeat = false
else
beat = value1
addzoom = value2
zoombeat = true
end
end
if name == 'Idle On Beat' then
if value1 == 'true' then
charbeat = true
else
charbeat = false
end
end
if name == 'Set Silhouettes' then
if value1 == 'a' then
makeLuaSprite('whiteb','',-700,-700)
makeGraphic('whiteb',3700,3000,'ffffff')
addLuaSprite('whiteb')
setProperty('whiteb.alpha',0)
doTweenAlpha('whiteb','whiteb',1,value2)
doTweenColor('boyfric','boyfriend','000000',value2)
doTweenColor('dadc','dad','000000',value2)
doTweenColor('gfc','gf','000000',value2)
end
if value1 == 'b' then
doTweenAlpha('whiteb','whiteb',0,value2)
doTweenColor('boyfric','boyfriend','ffffff',value2)
doTweenColor('dadc','dad','ffffff',value2)
doTweenColor('gfc','gf','ffffff',value2)
end
end
if name == 'Instant Camera Pos' then
if value1 == 'true' then
followy = getProperty('camFollow.y')
followx = getProperty('camFollow.x')
setProperty('cameraSpeed',100)
else
setProperty('cameraSpeed',1)
end
end
if name == 'Set Camera Pos' then
if value1 ~= '' and value2 ~= '' then
setProperty('camFollow.x',value1)
setProperty('camFollow.y',value2)
elseif value1 == '' and value2 == '' then
setProperty('camFollow.x',followx)
setProperty('camFollow.y',followy)
end
end
end
charbeat = false
zoombeat = false
function onBeatHit()
if charbeat == true then
if getProperty('boyfriend.animation.curAnim.name') == 'idle' then
characterPlayAnim('boyfriend','idle',false)
setProperty('boyfriend.specialAnim',true)
setProperty('boyfriend.holdTimer', 0);
end
if getProperty('dad.animation.curAnim.name') == 'idle' then
characterPlayAnim('dad','idle',false)
setProperty('dad.specialAnim',true)
setProperty('dad.holdTimer', 0);
end
if getProperty('gf.animation.curAnim.name') == 'idle' then
characterPlayAnim('gf','idle',false)
setProperty('gf.specialAnim',true)
setProperty('gf.holdTimer', 0);
end
end
if zoombeat == true then
if curBeat%beat == 0 then
setProperty('camGame.zoom',getProperty('camGame.zoom') + addzoom*0.03*getProperty('camGame.zoom'))
setProperty('camHUD.zoom',getProperty('camHUD.zoom') + addzoom*0.03)
end
end
end
time = 0
function onUpdate()
time = time + 1
setObjectCamera('countdownSet','camOther')
setObjectCamera('countdownReady','camOther')
setObjectCamera('countdownGo','camOther')
end