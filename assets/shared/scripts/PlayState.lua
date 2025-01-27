function onCountdownTick(count)
if count == 1 then
end
end
function onCreatePost()
makeAnimatedLuaSprite('splashes0','noteSplashes/holdSplashes/holdSplash')
addAnimationByPrefix('splashes0','hold','hold',36,true)
addLuaSprite('splashes0')

makeAnimatedLuaSprite('splashes1','noteSplashes/holdSplashes/holdSplash')
addAnimationByPrefix('splashes1','hold','hold',36,true)
addLuaSprite('splashes1')

makeAnimatedLuaSprite('splashes2','noteSplashes/holdSplashes/holdSplash')
addAnimationByPrefix('splashes2','hold','hold',36,true)
addLuaSprite('splashes2')

makeAnimatedLuaSprite('splashes3','noteSplashes/holdSplashes/holdSplash')
addAnimationByPrefix('splashes3','hold','hold',36,true)
addLuaSprite('splashes3')

makeAnimatedLuaSprite('splashesp0','noteSplashes/holdSplashes/holdSplash')
addAnimationByPrefix('splashesp0','hold','hold',36,true)
addAnimationByPrefix('splashesp0','end','end',36,false)
addLuaSprite('splashesp0')

makeAnimatedLuaSprite('splashesp1','noteSplashes/holdSplashes/holdSplash')
addAnimationByPrefix('splashesp1','hold','hold',36,true)
addAnimationByPrefix('splashesp1','end','end',36,false)
addLuaSprite('splashesp1')

makeAnimatedLuaSprite('splashesp2','noteSplashes/holdSplashes/holdSplash')
addAnimationByPrefix('splashesp2','hold','hold',36,true)
addAnimationByPrefix('splashesp2','end','end',36,false)
addLuaSprite('splashesp2')

makeAnimatedLuaSprite('splashesp3','noteSplashes/holdSplashes/holdSplash')
addAnimationByPrefix('splashesp3','hold','hold',36,true)
addAnimationByPrefix('splashesp3','end','end',36,false)
addLuaSprite('splashesp3')

makeAnimatedLuaSprite('splashesp4','noteSplashes/holdSplashes/holdSplash')
addAnimationByPrefix('splashesp4','end','end',36,false)
addLuaSprite('splashesp4')

makeAnimatedLuaSprite('splashesp5','noteSplashes/holdSplashes/holdSplash')
addAnimationByPrefix('splashesp5','end','end',36,false)
addLuaSprite('splashesp5')

makeAnimatedLuaSprite('splashesp6','noteSplashes/holdSplashes/holdSplash')
addAnimationByPrefix('splashesp6','end','end',36,false)
addLuaSprite('splashesp6')

makeAnimatedLuaSprite('splashesp7','noteSplashes/holdSplashes/holdSplash')
addAnimationByPrefix('splashesp7','end','end',36,false)
addLuaSprite('splashesp7')

addLuaScript('scripts/extra_scripts/createShader')

callScript('scripts/extra_scripts/createShader','createShader',{'pixel','pixel'})
setShaderFloat('pixel','iTime',0)
for i = 0,7 do
    setProperty('splashes'..i..'.alpha',0)
setProperty('splashesp'..i..'.alpha',0)
end
if getPropertyFromClass('states.PlayState','stageUI') == 'normal' then
runHaxeCode([[
import shaders.RGBPalette;
var rgbShader = new RGBPalette();
var rgbShader2 = new RGBPalette();
var rgbShader3 = new RGBPalette();
var rgbShader4 = new RGBPalette();
var rgbShader5 = new RGBPalette();
            var cam = new FlxCamera(0,0,1280,720,1);
            cam.bgColor = 0x00000000;
            setVar('splashesCam',cam);

game.getLuaObject('splashes0').cameras = [cam];
game.getLuaObject('splashes1').cameras = [cam];
game.getLuaObject('splashes2').cameras = [cam];
game.getLuaObject('splashes3').cameras = [cam];
game.getLuaObject('splashesp0').cameras = [cam];
game.getLuaObject('splashesp1').cameras = [cam];
game.getLuaObject('splashesp2').cameras = [cam];
game.getLuaObject('splashesp3').cameras = [cam];
game.getLuaObject('splashesp4').cameras = [cam];
game.getLuaObject('splashesp5').cameras = [cam];
game.getLuaObject('splashesp6').cameras = [cam];
game.getLuaObject('splashesp7').cameras = [cam];

            FlxG.cameras.add(cam,false);
            
            FlxG.cameras.remove(game.camOther,false);
            FlxG.cameras.add(game.camOther,false);

game.getLuaObject('splashes0').shader = rgbShader.shader;
game.getLuaObject('splashesp0').shader = rgbShader.shader;
game.getLuaObject('splashes1').shader = rgbShader2.shader;
game.getLuaObject('splashesp1').shader = rgbShader2.shader;
game.getLuaObject('splashes2').shader = rgbShader3.shader;
game.getLuaObject('splashesp2').shader = rgbShader3.shader;
game.getLuaObject('splashes3').shader = rgbShader4.shader;
game.getLuaObject('splashesp3').shader = rgbShader4.shader;
game.getLuaObject('splashesp4').shader = rgbShader5.shader;
game.getLuaObject('splashesp5').shader = rgbShader5.shader;
game.getLuaObject('splashesp6').shader = rgbShader5.shader;
game.getLuaObject('splashesp7').shader = rgbShader5.shader;
rgbShader.r = 0xFF87A3AD;
rgbShader.g = 0xFFFFFFFF;
rgbShader.b = 0xFF3C1F56;
rgbShader2.r = 0xFF87A3AD;
rgbShader2.g = 0xFFFFFFFF;
rgbShader2.b = 0xFF1542B7;
rgbShader3.r = 0xFF87A3AD;
rgbShader3.g = 0xFFFFFFFF;
rgbShader3.b = 0xFF0A4447;
rgbShader4.r = 0xFF87A3AD;
rgbShader4.g = 0xFFFFFFFF;
rgbShader4.b = 0xFF651038;
rgbShader5.r = 0xBB87A3AD;
rgbShader5.g = 0xFFC0C0C0;
rgbShader5.b = 0xFF1542B7;
return;
]])
elseif getPropertyFromClass('states.PlayState','stageUI') == 'pixel' then
    runHaxeCode([[
    import shaders.RGBPalette;
    var rgbShader = new RGBPalette();
    var rgbShader2 = new RGBPalette();
    var rgbShader3 = new RGBPalette();
    var rgbShader4 = new RGBPalette();
                var cam = new FlxCamera(0,0,1280,720,1);
                cam.bgColor = 0x00000000;
                setVar('splashesCam',cam);
    game.getLuaObject('splashes0').cameras = [cam];
    game.getLuaObject('splashes1').cameras = [cam];
    game.getLuaObject('splashes2').cameras = [cam];
    game.getLuaObject('splashes3').cameras = [cam];
    game.getLuaObject('splashesp0').cameras = [cam];
    game.getLuaObject('splashesp1').cameras = [cam];
    game.getLuaObject('splashesp2').cameras = [cam];
    game.getLuaObject('splashesp3').cameras = [cam];
    game.getLuaObject('splashesp4').cameras = [cam];
    game.getLuaObject('splashesp5').cameras = [cam];
    game.getLuaObject('splashesp6').cameras = [cam];
    game.getLuaObject('splashesp7').cameras = [cam];

                FlxG.cameras.add(cam,false);
    cam.filters = [new ShaderFilter(game.getLuaObject('pixel').shader)];
                
                FlxG.cameras.remove(game.camOther,false);
                FlxG.cameras.add(game.camOther,false);
    
    game.getLuaObject('splashes0').shader = rgbShader.shader;
    game.getLuaObject('splashesp0').shader = rgbShader.shader;
    game.getLuaObject('splashes1').shader = rgbShader2.shader;
    game.getLuaObject('splashesp1').shader = rgbShader2.shader;
    game.getLuaObject('splashes2').shader = rgbShader3.shader;
    game.getLuaObject('splashesp2').shader = rgbShader3.shader;
    game.getLuaObject('splashes3').shader = rgbShader4.shader;
    game.getLuaObject('splashesp3').shader = rgbShader4.shader;
    game.getLuaObject('splashesp4').shader = rgbShader.shader;
    game.getLuaObject('splashesp5').shader = rgbShader2.shader;
    game.getLuaObject('splashesp6').shader = rgbShader3.shader;
    game.getLuaObject('splashesp7').shader = rgbShader4.shader;
    rgbShader.r = 0xFFE276FF;
    rgbShader.g = 0xFFFFF9FF;
    rgbShader.b = 0xFF60008D;
    rgbShader2.r = 0xFF3DCAFF;
    rgbShader2.g = 0xFFF4FFFF;
    rgbShader2.b = 0xFF003060;
    rgbShader3.r = 0xFF71E300;
    rgbShader3.g = 0xFFF6FFE6;
    rgbShader3.b = 0xFF003100;
    rgbShader4.r = 0xFFFF884E;
    rgbShader4.g = 0xFFFFFAF5;
    rgbShader4.b = 0xFF6C0000;
    return;
    ]])
    end
setProperty('camZooming',true)
setPropertyFromClass('openfl.Lib','application.window.bgColor',"000000")
end
beat = 1
addzoom = 1
function onTweenCompleted(name)
if name == 'camGametweenzoom' then
setProperty('defaultCamZoom',getProperty('camGame.zoom'))
end
end
function onTimerCompleted(tag)
if tag == 'removeoppo0' then
setProperty('splashes0.alpha',0)
end
if tag == 'removeoppo1' then
setProperty('splashes1.alpha',0)
end
if tag == 'removeoppo2' then
setProperty('splashes2.alpha',0)
end
if tag == 'removeoppo3' then
setProperty('splashes3.alpha',0)
end
if tag == 'endplay0' then
objectPlayAnimation('splashesp4','end')
setProperty('splashesp4.alpha',1)
setProperty('splashesp0.alpha',0)
runTimer('removeplay0',0.3)
end
if tag == 'endplay1' then
objectPlayAnimation('splashesp5','end')
setProperty('splashesp5.alpha',1)
setProperty('splashesp1.alpha',0)
runTimer('removeplay1',0.3)
end
if tag == 'endplay2' then
objectPlayAnimation('splashesp6','end')
setProperty('splashesp6.alpha',1)
setProperty('splashesp2.alpha',0)
runTimer('removeplay2',0.3)
end
if tag == 'endplay3' then
objectPlayAnimation('splashesp7','end')
setProperty('splashesp7.alpha',1)
setProperty('splashesp3.alpha',0)
runTimer('removeplay3',0.3)
end
if tag == 'removeplay0' then
setProperty('splashesp4.alpha',0)
end
if tag == 'removeplay1' then
setProperty('splashesp5.alpha',0)
end
if tag == 'removeplay2' then
setProperty('splashesp6.alpha',0)
end
if tag == 'removeplay3' then
setProperty('splashesp7.alpha',0)
end
end
function opponentNoteHit(id,dir,type,sus)
if sus then
setProperty('splashes'..dir..'.alpha',1)
objectPlayAnimation('splashes'..dir,'hold')
runTimer('removeoppo'..dir,0.2)
end
end
function goodNoteHit(id,dir,type,sus)
if sus then
setProperty('splashesp'..dir..'.alpha',1)
objectPlayAnimation('splashesp'..dir,'hold')
runTimer('endplay'..dir,0.2)
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
runHaxeCode([[
var camSplashes = getVar('splashesCam');
camSplashes.alpha = game.camHUD.alpha;
camSplashes.angle = game.camHUD.angle;
camSplashes.x = game.camHUD.x;
camSplashes.y = game.camHUD.y;
camSplashes.zoom = game.camHUD.zoom;
]])
for i = 0,7 do
setProperty('splashes'..i..'.y',defaultPlayerStrumY0-100)
setProperty('splashesp'..i..'.y',defaultPlayerStrumY0-100)
end
if getPropertyFromClass('states.PlayState','stageUI') == 'normal' then
setProperty('splashes0.x',getPropertyFromGroup('opponentStrums',0,'x') -110)
setProperty('splashes1.x',getPropertyFromGroup('opponentStrums',1,'x') -105)
setProperty('splashes2.x',getPropertyFromGroup('opponentStrums',2,'x') -105)
setProperty('splashes3.x',getPropertyFromGroup('opponentStrums',3,'x') -105)
setProperty('splashesp0.x',getPropertyFromGroup('playerStrums',0,'x') -110)
setProperty('splashesp1.x',getPropertyFromGroup('playerStrums',1,'x') -105)
setProperty('splashesp2.x',getPropertyFromGroup('playerStrums',2,'x') -105)
setProperty('splashesp3.x',getPropertyFromGroup('playerStrums',3,'x') -105)
setProperty('splashesp4.x',getPropertyFromGroup('playerStrums',0,'x') -110)
setProperty('splashesp5.x',getPropertyFromGroup('playerStrums',1,'x') -105)
setProperty('splashesp6.x',getPropertyFromGroup('playerStrums',2,'x') -105)
setProperty('splashesp7.x',getPropertyFromGroup('playerStrums',3,'x') -105)
elseif getPropertyFromClass('states.PlayState','stageUI') == 'pixel' then
setProperty('splashes0.x',getPropertyFromGroup('opponentStrums',0,'x') -110)
setProperty('splashes1.x',getPropertyFromGroup('opponentStrums',1,'x') -110)
setProperty('splashes2.x',getPropertyFromGroup('opponentStrums',2,'x') -110)
setProperty('splashes3.x',getPropertyFromGroup('opponentStrums',3,'x') -110)
setProperty('splashesp0.x',getPropertyFromGroup('playerStrums',0,'x') -110)
setProperty('splashesp1.x',getPropertyFromGroup('playerStrums',1,'x') -110)
setProperty('splashesp2.x',getPropertyFromGroup('playerStrums',2,'x') -110)
setProperty('splashesp3.x',getPropertyFromGroup('playerStrums',3,'x') -110)
setProperty('splashesp4.x',getPropertyFromGroup('playerStrums',0,'x') -110)
setProperty('splashesp5.x',getPropertyFromGroup('playerStrums',1,'x') -110)
setProperty('splashesp6.x',getPropertyFromGroup('playerStrums',2,'x') -110)
setProperty('splashesp7.x',getPropertyFromGroup('playerStrums',3,'x') -110)    
end
setObjectCamera('countdownSet','camOther')
setObjectCamera('countdownReady','camOther')
setObjectCamera('countdownGo','camOther')
end