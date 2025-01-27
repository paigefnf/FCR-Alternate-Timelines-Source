
-- Creado y mejorado por CONTRASAKAR 
-- https://youtube.com/@contrasakar?si=tNGrMu6nLHGbBrJs

function onEvent(name, value1, value2)

    if name == 'Cam Toggle improv' and value1 == '1' then
        doTweenAlpha('Game', 'camGame', 0, value2, 'linear')
    end
    if name == 'Cam Toggle improv' and value1 == '2' then
        doTweenAlpha('HUD', 'camHUD', 0, value2, 'linear')
    end
    if name == 'Cam Toggle improv' and value1 == '3' then
        doTweenAlpha('Game', 'camGame', 0, value2, 'linear')
        doTweenAlpha('HUD', 'camHUD', 0, value2, 'linear')
    end
    if name == 'Cam Toggle improv' and value1 == '0' then
        doTweenAlpha('Game', 'camGame', 1, value2, 'linear')
        doTweenAlpha('HUD', 'camHUD', 1, value2, 'linear')
    end
end