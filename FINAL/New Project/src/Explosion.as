package src 
{
	import flash.display.MovieClip;
	/**
	 * ...
	 * @author Coen Meijer
	 */
	public class Explosion extends MovieClip
	{
		public var art:MovieClip;
		
		public function Explosion() 
		{
			art = new ExplosionArt();
			addChild(art);
			
		}
		
	}

}