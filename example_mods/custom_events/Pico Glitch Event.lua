-- This variant of the FCR Pico glitch event was made by Honton129
-- Some of the shaders here where found by Tikaz
-- (Please Credit both persons involved thx! :D)

function onCreate()
    if (shadersEnabled) then
		initLuaShader("GlitchyBlocksShader");
        initLuaShader("ChromaticAbberationShader");
        initLuaShader("BloomShader");
		
		makeLuaSprite("temporaryShader");
		makeGraphic("temporaryShader", screenWidth, screenHeight);

        makeLuaSprite("temporaryShader2");
		makeGraphic("temporaryShader2", screenWidth, screenHeight);

        makeLuaSprite("temporaryShader3");
		makeGraphic("temporaryShader3", screenWidth, screenHeight);
		
		setSpriteShader("temporaryShader", "GlitchyBlocksShader");
        setSpriteShader("temporaryShader2", "ChromaticAbberationShader");
        setSpriteShader("temporaryShader3", "BloomShader");
		
		addHaxeLibrary("ShaderFilter", "openfl.filters");
		runHaxeCode([[
			trace(ShaderFilter);
			game.camGame.setFilters([new ShaderFilter(game.getLuaObject("temporaryShader").shader), new ShaderFilter(game.getLuaObject("temporaryShader2").shader), new ShaderFilter(game.getLuaObject("temporaryShader3").shader)]);
			game.camHUD.setFilters([new ShaderFilter(game.getLuaObject("temporaryShader2").shader)]);
		]]);
	end
end

function onEvent(eventName, value1, value2)
    if eventName == 'Pico Glitch Event' then
        if (shadersEnabled) then
            function onUpdate(elapsed)
                multGlitch = math.lerp(0, getShaderFloat("temporaryShader", "iTime"), boundTo(1 - (elapsed * 3.125 * 1), 0, 1));
            
                multChrom1 = math.lerp(0, getShaderFloat("temporaryShader2", "rOffset"), boundTo(1 - (elapsed * 1.825 * 1), 0, 1));
                multChrom2 = math.lerp(0, getShaderFloat("temporaryShader2", "gOffset"), boundTo(1 - (elapsed * 1.825 * 1), 0, 1));
                multChrom3 = math.lerp(0, getShaderFloat("temporaryShader2", "bOffset"), boundTo(1 - (elapsed * 1.825 * 1), 0, 1));
            
                multBloom = math.lerp(0, getShaderFloat("temporaryShader3", "iTime"), boundTo(1 - (elapsed * 3.125 * 1), 0, 1));
            
                setShaderFloat("temporaryShader", "iTime", multGlitch);
            
                setShaderFloat("temporaryShader2", "rOffset", multChrom1);
                setShaderFloat("temporaryShader2", "gOffset", multChrom2);
                setShaderFloat("temporaryShader2", "bOffset", multChrom3);
            
                setShaderFloat("temporaryShader3", "iTime", multBloom);
            end

            setShaderFloat("temporaryShader", "iTime", 1);

            setShaderFloat("temporaryShader2", "rOffset", 0.01);
            setShaderFloat("temporaryShader2", "gOffset", 0.01);
            setShaderFloat("temporaryShader2", "bOffset", 0.01);

            setShaderFloat("temporaryShader3", "iTime", 0.5);
        end
    end
end

function boundTo(value, min, max)
	return math.max(min, math.min(max, value));
end

function math.lerp(from, to, i) 
    return from + (to - from) * i;
end