package;

import flixel.*;
import flixel.text.FlxText;
import flixel.ui.FlxButton;
import flixel.util.*;
import flixel.group.FlxGroup;

/**
 * A FlxState which can be used for the actual gameplay.
 */
class PlayState extends FlxState
{	
	private var background:FlxSprite;
	
	private var _player:Player;
	private var _coinsPot:FlxGroup;

	private var _counter:Float;
	private var _gameSpeed:Float;

	/**
	 * Function that is called up when to state is created to set it up. 
	 */
	override public function create():Void
	{	
		var i:Int = 0;
		super.create();
		
		background = new FlxSprite(0,0, AssetPaths.background__png);
		//background.setGraphicSize(FlxG.width,FlxG.height);
		//background.setPosition( FlxG.width/4 ,FlxG.height/4);
		add(background);

		_player = new Player();
		add(_player);

		//add(new Coins());
		_coinsPot = new FlxGroup();

		for (i in 0...20)
		{
			_coinsPot.add(new Coins());
			
		}
		
		//add(_coinsPot);

		_counter = _gameSpeed = 4;
		
	}
	
	/**
	 * Function that is called when this state is destroyed - you might want to 
	 * consider setting all objects this state uses to null to help garbage collection.
	 */
	override public function destroy():Void
	{
		super.destroy();
	}

	/**
	 * Function that is called once every frame.
	 */
	override public function update():Void
	{
		super.update();

		_counter -= FlxG.elapsed;
		/*
		if (_counter <= 0)
		{
			var c:Coins;
			c = _coinsPot.getFirstAvailable( ?ObjectClass : Class<flixel.FlxBasic> , ?Force : Bool );
			if (c != null)
			{
				c.reset(FlxRandom.floatRanged(0, FlxG.width), 0);
				c.velocity.x = 50;
			}
			_gameSpeed -= FlxG.elapsed/2;

			_counter = _gameSpeed;
		}
		*/
	}	
}