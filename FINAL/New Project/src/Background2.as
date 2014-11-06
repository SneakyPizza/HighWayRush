package src 
{
	import flash.display.MovieClip;
	/**
	 * ...
	 * @author Coen Meijer
	 */
	public class Background2 extends MovieClip
	{
		public var art:MovieClip;
		public var speed:int;
		
		public function Background2() 
		{
			art = new BackgroundArt2();
			addChild(art);
			
			speed = 1;
		}
		public function move() {
			this.x -= speed;
		}
		
	}

}