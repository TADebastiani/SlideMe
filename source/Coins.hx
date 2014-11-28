
package ;

import flixel.*;
import flixel.FlxObject;
import flixel.util.*;

class Coins extends FlxSprite
{

	public function Coins()
	{

		loadGraphic(AssetPaths.coin__png,true, 50, 50);
		animation.add("spin", [0, 1, 2, 3, 4, 5, 6, 7, 8, 9], 10);
		animation.play("spin");
		super.setPosition(10,10);
		//kill();
	}

	override public function update():Void
	{
		super.update();

		
		if ((x > FlxG.width && x < 0) || (y > FlxG.height && y < 0))
		{
			kill();
		}

	}

}