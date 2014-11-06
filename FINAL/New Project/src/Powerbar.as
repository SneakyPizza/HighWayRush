package src 
{
	import flash.display.MovieClip;
	/**
	 * ...
	 * @author Coen Meijer
	 */
	public class Powerbar extends MovieClip
	{
		public var art:MovieClip;
		
		public function Powerbar() {
			art = new PowerbarArt;
			addChild(art);
			
			
		}
		
	}

}