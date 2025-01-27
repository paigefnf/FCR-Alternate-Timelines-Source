local shaderName = "pico" 
local shaderName4 = 'rgbeffect3'
function onEvent(tag , v1, v2) 
    if tag == 'Add Pico Effect' then
    makeLuaSprite("shaderImage")     
    makeGraphic("shaderImage", screenWidth, screenHeight)     
    setSpriteShader("shaderImage", "pico")       
    runTimer('picoEffect', 1)
    runHaxeCode([[         
    var shaderName = "]] .. shaderName .. [[";                  
    game.initLuaShader(shaderName);                  
    var shader0 = game.createRuntimeShader(shaderName);         
    game.camGame.setFilters([new ShaderFilter(shader0)]);         
    game.getLuaObject("shaderImage").shader = shader0; // setting it into temporary sprite so luas can set its shader uniforms/properties         
    return;     
    ]])
    if songName == 'Times Up Remix' then
    makeLuaSprite('flash2', '', 0, 0);
    makeGraphic('flash2',1280,720,'ffffff')
    setProperty('flash2.scale.x',999)
    setProperty('flash2.scale.y',999)
    setProperty('flash2.alpha',0.1);
    doTweenAlpha('flash2','flash2',0,1,'linear')
    addLuaSprite('flash2', true);
     end
     end 
     end  

     function onUpdate()
        setShaderFloat("shaderImage", "iTime", os.clock())  
     end


function onTimerCompleted(tag, loops, loopsleft)
if tag == 'picoEffect' then
   shaderName = "pico"
   shaderName2 = 'tv'
   shaderName3 = 'vcr'
   shaderName4 = 'rgbeffect3'
   if songName == 'Rebound' then
    runHaxeCode([[
        var shaderName2 = "]] .. shaderName2 .. [[";
        
        game.initLuaShader(shaderName2);
        var shader01 = game.createRuntimeShader(shaderName2);
        
        game.camGame.setFilters([new ShaderFilter(shader01)]);
        game.getLuaObject("111").shader = shader01; // setting it into temporary sprite so luas can set its shader uniforms/properties
    ]])
    elseif songName == 'Infraction' then
        runHaxeCode([[
            var shaderName2 = "]] .. shaderName2 .. [[";
        
        game.initLuaShader(shaderName2);
        var shader01 = game.createRuntimeShader(shaderName2);
        
        game.camGame.setFilters([new ShaderFilter(shader01)]);
        ]])
    else

        runHaxeCode([[
        var shaderName2 = "]] .. shaderName2 .. [[";
        
        game.initLuaShader(shaderName2);
        var shader01 = game.createRuntimeShader(shaderName2);
        
        game.camGame.setFilters([new ShaderFilter(shader01)]);
        game.getLuaObject("111").shader = shader01; // setting it into temporary sprite so luas can set its shader uniforms/properties
    ]])
    end
end
end