package funkin.game.stages.objects;

class BackTankmen extends BGSprite
{
	public var heyTimer:Float = 0;
	public function new(x:Float = 0, y:Float = 0, sprite:String = 'stage_assets/limo2/backMan', idle:String = 'backMan')
	{
		super(sprite, x, y, 0.9, 0.9, [idle]);
		antialiasing = ClientPrefs.data.antialiasing;
	}
}