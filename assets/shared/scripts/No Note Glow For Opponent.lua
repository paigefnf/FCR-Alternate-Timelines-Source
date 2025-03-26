function opponentNoteHit(i,d,t,s)
    callMethod('opponentStrums.members[' .. d .. '].playAnim', {'static', true})
end
