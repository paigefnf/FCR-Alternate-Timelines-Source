function goodNoteHitPre(i,d,t,s)
   if s then
      setProperty('notes.members['..i..'].noAnimation', true)
       setProperty('boyfriend.holdTimer', 0)
    end
end

function opponentNoteHitPre(i,d,t,s)
   if s then
      setProperty('notes.members['..i..'].noAnimation', true)
       setProperty('dad.holdTimer', 0)
    end
end