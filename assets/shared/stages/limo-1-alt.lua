function onCountdownTick(count)
if count == 2 then
objectPlayAnimation('backMan','idle')
objectPlayAnimation('frontMan','idle')
objectPlayAnimation('henchmen1','idle')
objectPlayAnimation('henchmen2','idle')
objectPlayAnimation('henchmen3','idle')
objectPlayAnimation('henchmen4','idle')
objectPlayAnimation('henchmen5','idle')
end
end
function onBeatHit()
if curBeat %2 == 0 then
objectPlayAnimation('henchmen1','idle')
objectPlayAnimation('henchmen2','idle')
objectPlayAnimation('henchmen3','idle')
objectPlayAnimation('henchmen4','idle')
objectPlayAnimation('henchmen5','idle')
objectPlayAnimation('backMan','idle')
objectPlayAnimation('frontMan','idle')
end
end
function onStepHit()
if curStep == 64 then
doTweenAlpha('fog','fog',0,1,'')
end
end