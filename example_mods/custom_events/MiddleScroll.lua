function onEvent(name, value1, value2)
    if name == 'MiddleScroll' then
        noteTweenX("NoteMove1", 0, 410, value1, cubeInOut)
        noteTweenX("NoteMove2", 1, 520, value1, cubeInOut)
        noteTweenX("NoteMove3", 2, 630, value1, cubeInOut)
        noteTweenX("NoteMove4", 3, 740, value1, cubeInOut)
        noteTweenX("NoteMove5", 4, 410, value1, cubeInOut)
        noteTweenX("NoteMove6", 5, 520, value1, cubeInOut)
        noteTweenX("NoteMove7", 6, 630, value1, cubeInOut)
        noteTweenX("NoteMove8", 7, 740, value1, cubeInOut)
        noteTweenAlpha("NoteFade1", 0, 0, value2, cubeInOut)
        noteTweenAlpha("NoteFade2", 1, 0, value2, cubeInOut)
        noteTweenAlpha("NoteFade3", 2, 0, value2, cubeInOut)
        noteTweenAlpha("NoteFade4", 3, 0, value2, cubeInOut)
    end
end