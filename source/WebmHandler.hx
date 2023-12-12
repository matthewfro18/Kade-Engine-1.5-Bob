package;

import flixel.FlxG;
import openfl.display.Sprite;
#if desktop
import webm.*;
#end

class WebmHandler
{
	#if desktop
	public var webm:Sprite;
	public var vidPath:String = "";
	public var io:Sprite;
	public var initialized:Bool = false;
	
	public function new()
	{
	}
	
	public function source(?vPath:String):Void
	{
		if (vPath != null && vPath.length > 0)
		{
		vidPath = vPath;
		}
	}
	
	public function makePlayer():Void
	{
		{
			onPlay();
		}

		{
			onEnd();
		}
		
		{
			onStop();
		}
		
		{
			onRestart();
		}
		webm.visible = false;
		initialized = true;
	}
	
	public function updatePlayer():Void
	{

	}
	
	public function play():Void
	{
		if (initialized)
		{

		}
	}
	
	public function stop():Void
	{
		if (initialized)
		{

		}
	}
	
	public function restart():Void
	{
		if (initialized)
		{

		}
	}
	
	public function update(elapsed:Float)
	{
		webm.x = GlobalVideo.calc(0);
		webm.y = GlobalVideo.calc(1);
		webm.width = GlobalVideo.calc(2);
		webm.height = GlobalVideo.calc(3);
	}
	
	public var stopped:Bool = false;
	public var restarted:Bool = false;
	public var played:Bool = false;
	public var ended:Bool = false;
	public var paused:Bool = false;
	
	public function pause():Void
	{
		paused = true;
	}
	
	public function resume():Void
	{
		paused = false;
	}
	
	public function togglePause():Void
	{
		if (paused)
		{
			resume();
		} else {
			pause();
		}
	}
	
	public function clearPause():Void
	{
		paused = false;
	}
	
	public function onStop():Void
	{
		stopped = true;
	}
	
	public function onRestart():Void
	{
		restarted = true;
	}
	
	public function onPlay():Void
	{
		played = true;
	}
	
	public function onEnd():Void
	{
		trace("IT ENDED!");
		ended = true;
	}
	
	public function alpha():Void
	{
		webm.alpha = GlobalVideo.daAlpha1;
	}
	
	public function unalpha():Void
	{
		webm.alpha = GlobalVideo.daAlpha2;
	}
	
	public function hide():Void
	{
		webm.visible = false;
	}
	
	public function show():Void
	{
		webm.visible = true;
	}
	#else
	public function new()
	{
	trace("THIS IS ANDROID! or some shit...");
	}
	#end
}