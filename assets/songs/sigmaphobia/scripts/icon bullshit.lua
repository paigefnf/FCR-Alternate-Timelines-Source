function onUpdate(elapsed)
    local time = getSongPosition() / 500 -- Get precise song timing
    local bounceHeight = math.sin(time * math.pi) * 10 -- Smooth bounce effect

    setProperty('iconP1.y', defaultIconY + bounceHeight)
    setProperty('iconP2.y', defaultIconY + bounceHeight)
end

function onCreate()
    defaultIconY = getProperty('iconP1.y') -- Store the default position
end
