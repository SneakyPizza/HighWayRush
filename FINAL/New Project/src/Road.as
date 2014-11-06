package src 
{
	import flash.display.MovieClip;
	/**
	 * ...
	 * @author Coen Meijer
	 */
	public class Road extends MovieClip
	{
		public var art: MovieClip
		
		public function Road() 
		{
			art = new WegArt();
			addChild(art);
		}
		public function move() {
			this.x -= 12;
		}
	}
}