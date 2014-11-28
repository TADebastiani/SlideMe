package;

import flixel.FlxG;
import flixel.FlxSprite;
import flixel.FlxState;
import flixel.text.FlxText;
import flixel.ui.FlxButton;
import flixel.util.FlxMath;
import flixel.util.FlxDestroyUtil;

using flixel.util.FlxSpriteUtil;


/**
 * A FlxState which can be used for the game's menu.
 */
class MenuState extends FlxState
{
 	private var _btnPlay:FlxButton;
 	private var _btnOptions:FlxButton;
 	private var title:FlxText;
 	private var footer:FlxText;
	private var background:FlxSprite;

	/**
	 * Function that is called up when to state is created to set it up. 
	 */
	override public function create():Void
	{

		background = new FlxSprite(0,0, AssetPaths.background__png);
		background.setGraphicSize(FlxG.width,FlxG.height);
		background.screenCenter();
		add(background);

		title = new FlxText(0,10,120,"SlideMe",20, false);
		title.alignment = "center";
		title.screenCenter(true, false);
		add(title);

		footer = new FlxText(0, 0, 200, "Devloped by:\nTsukini", 7, false);
		footer.setPosition(0, FlxG.height - footer.height);
		footer.alignment = "center";
		footer.screenCenter(true, false);
		add(footer);

		_btnPlay = new FlxButton(0, 0, "Play",clickPlay);
		_btnPlay.screenCenter(true,true);
		add(_btnPlay);

		_btnOptions = new FlxButton(0,FlxG.height/2 + _btnPlay.height,"Options",clickOptions);
		_btnOptions.screenCenter(true,false);
		add(_btnOptions);
		
		super.create();
	}
	
	/**
	 * Function that is called when this state is destroyed - you might want to 
	 * consider setting all objects this state uses to null to help garbage collection.
	 */
	override public function destroy():Void
	{
		super.destroy();
		_btnPlay = FlxDestroyUtil.destroy(_btnPlay);
	}

	/**
	 * Function that is called once every frame.
	 */
	override public function update():Void
	{
		super.update();
	}

	private function clickPlay():Void{
		FlxG.switchState(new PlayState());
	}

	private function clickOptions():Void
	{
		FlxG.fullscreen = !FlxG.fullscreen;
		
	}
	/*
	private function clickFullScreen():Void
	{
	}
	*/
}