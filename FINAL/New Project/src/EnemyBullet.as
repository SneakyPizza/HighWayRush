package src 
{
	import flash.display.MovieClip;
	import flash.geom.Point;
	/**
	 * ...
	 * @author Coen Meijer
	 */
	public class EnemyBullet extends MovieClip
	{
		public var art:MovieClip;
		public var _life:int;
		
		public function EnemyBullet() {
			art = new EnemyBulletArt();
			addChild(art);
			_life = 3;
		}
		
		public function movement($speed:Number):void{
			var movementSpeed:Point = new Point();
			movementSpeed.x = Math.cos(this.rotation / 180 * Math.PI) * $speed;
			movementSpeed.y = Math.sin(this.rotation / 180 * Math.PI) * $speed;
			
			this.x += movementSpeed.x;
			this.y += movementSpeed.y;
		}
	}
}