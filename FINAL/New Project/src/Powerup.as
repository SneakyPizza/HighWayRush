package src
{
	import flash.display.MovieClip; 
	import flash.events.Event;
	/**
	 * ...
	 * @author Coen Meijer
	 */
	public class Powerup extends MovieClip
	{
		public var art:MovieClip;
		
		public function Powerup() {
			art = new PowerUpArt();
			addChild(art);
		}
		public function powerLoop():void {	
			this.x -= 9;	
			if(this.y < 570)this.y += 12;
			
		}
	}
}