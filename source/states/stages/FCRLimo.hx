package states.stages;

import states.stages.objects.*;

class FCRLimo extends BaseStage
{
	override function create()
	{
		var sky:BGSprite = new BGSprite('stage_assets/limo/limoSky',-3200,-800, 0.7, 0.7);
		add(sky);

		var front:BGSprite = new BGSprite('stage_assets/limo/frontStreet',300,-200, 0.9, 0.9);
		add(front);
		front.screenCenter(X);

		var light1:BGSprite = new BGSprite('stage_assets/limo/streetLight',-500,-600);
		add(light1);

		var light2:BGSprite = new BGSprite('stage_assets/limo/streetLight',300,-600);
		add(light2);

		var light3:BGSprite = new BGSprite('stage_assets/limo/streetLight',1000,-600);
		add(light3);

		var light4:BGSprite = new BGSprite('stage_assets/limo/streetLight',1900,-600);
		add(light4);

		var backCar:BGSprite = new BGSprite('stage_assets/limo/backCar',-300,50);
		add(backCar);

		var frontCar:BGSprite = new BGSprite('stage_assets/limo/frontCar',-25,50);
		add(frontCar);

		var filter:BGSprite = new BGSprite('stage_assets/limo/filter',-3200,-800);
		filter.scrollFactor.set(0.7,0.7);
		add(filter);
		filter.alpha = 1;

		var lay:BGSprite = new BGSprite('overlay',0,0);
		lay.cameras = [camHUD];
		add(lay);
	}

	override function update(elapsed:Float)
	{
		// Code here
	}
}