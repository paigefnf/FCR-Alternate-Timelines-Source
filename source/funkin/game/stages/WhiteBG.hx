package funkin.game.stages;

import funkin.game.stages.objects.*;

class WhiteBG extends BaseStage
{
	override function create()
	{
		var bg:BGSprite = new BGSprite('stage_assets/extras/echo/white', -600, -200);
		add(bg);
	}
}