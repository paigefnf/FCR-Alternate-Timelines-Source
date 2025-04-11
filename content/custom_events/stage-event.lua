function onCreate()
    setPropert('Mogus', 0)
end

function onEvent(name, value1, value2)
	if name == 'stage-event' then
		if value1 == 'eyes_on' then
			doTweenAlpha('eyes_alpha_tween', 'eyes', 1.0, value2, 'sineInOut');
			doTweenAlpha('eyes_overlay_alpha_tween', 'eyes_overlay', 1.0, value2, 'sineInOut');
		end
		if value1 == 'eyes_off' then
			doTweenAlpha('eyes_alpha_tween', 'eyes', 0.0, value2, 'sineInOut');
			doTweenAlpha('eyes_overlay_alpha_tween', 'eyes_overlay', 0.0, value2, 'sineInOut');
		end
		if value1 == 'eyes_alt' then
			setProperty('eyes.alpha', value2);
		end
		if value1 == 'ghosts' then
			doTweenAlpha('ghosts_alpha_tween', 'halloweenGhosts', value2, 0.75, 'sineInOut');
		end
		if value1 == 'ghosts_fading' then
			doTweenAlpha('ghosts_alpha_tween', 'halloweenGhosts', value2, 5, 'sineInOut');
		end
		if value1 == 'danger' then
			doTweenAlpha('danger_alpha_tween', 'danger_filter', value2, 2.5, 'sineInOut');
		end
	end
end