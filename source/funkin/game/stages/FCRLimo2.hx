package funkin.game.stages;

import funkin.game.stages.objects.*;

class FCRLimo2 extends BaseStage
{

	override function create()
	{
		Paths.clearStoredMemory();
		Paths.clearUnusedMemory();
		
		var sky:BGSprite = new BGSprite('stage_assets/limo2/limoSky',-3200,-800, 0.7, 0.7);
		add(sky);

		var front:BGSprite = new BGSprite('stage_assets/limo2/frontStreet',300,-200, 0.9, 0.9);
		add(front);
		front.screenCenter(X);

		var light1:BGSprite = new BGSprite('stage_assets/limo2/streetLight',-500,-300);
		add(light1);

		var light2:BGSprite = new BGSprite('stage_assets/limo2/streetLight',300,-300);
		add(light2);

		var light3:BGSprite = new BGSprite('stage_assets/limo2/streetLight',1000,-300);
		add(light3);

		var light4:BGSprite = new BGSprite('stage_assets/limo2/streetLight',1900,-300);
		add(light4);
		
		var backCar:BGSprite = new BGSprite('stage_assets/limo2/backCar',-100,280);
		add(backCar);

		var frontCar:BGSprite = new BGSprite('stage_assets/limo2/frontCar',-25,50);
		add(frontCar);

		var filter:BGSprite = new BGSprite('stage_assets/limo2/filter',-3200,-800);
		filter.scrollFactor.set(0.7,0.7);
		add(filter);
		filter.alpha = 1;

		var lay:BGSprite = new BGSprite('stage_assets/overlay',0,0);
		lay.cameras = [camHUD];
		add(lay);
	}

	override function update(elapsed:Float)
	{
		// Code here
	}
}