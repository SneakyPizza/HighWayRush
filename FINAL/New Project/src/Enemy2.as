package src
{
	import flash.display.Sprite;
	import flash.display.MovieClip;
	import flash.events.Event;
	import flash.utils.Timer;
	import flash.events.TimerEvent;
	import flash.geom.Point;
	/**
	 * ...
	 * @author Coen Meijer
	 */
	public class Enemy2 extends MovieClip{
		
		public var art:MovieClip;
		public var _life:int;
		public var shootTimer:Timer;
		public var speed:int;
		
		public function Enemy2(){
			addEventListener(Event.ADDED_TO_STAGE, init);
		}
		
		public function init(e:Event):void {
			art = new DroneArt2();
			addChild(art);
			
			_life = 10;
			speed = 8;
			
			shootTimer = new Timer(2000, 0);
			shootTimer.start();
			shootTimer.addEventListener(TimerEvent.TIMER, shoot);
		}
		
		public function shoot(e:TimerEvent) {
			if (Math.random() < 0.20){
				var enBull:EnemyBullet = new EnemyBullet();
				
				Main._main.enemybullets.push(enBull);
				Main._main.addChild(enBull);
				enBull.x = this.x;
				enBull.y = this.y;
				
				enBull.rotation = followTarget(new Point(Main._main.player.x,Main._main.player.y))
			}
		}
		public function followTarget ($target:Point):Number{
			var xdiff:Number = ($target.x - this.x);
			var ydiff:Number = ($target.y - this.y);
			var radians:Number = Math.atan2(ydiff, xdiff);
			var degrees:Number = radians * 180 / Math.PI;			
			return degrees;
		}
		
		public function enemyLoop():void {
			this.x -= speed;
		}
		
		public function dropPowerUp():void {
			var PU: Powerup = new Powerup();
			Main._main.powerups.push(PU);
			Main._main.addChild(PU);
			PU.x = this.x;
			PU.y = this.y;
		}
		public function destroy() {
			//trace('ENEMIES EXPLOSION HERE!!!');
			var explo:Explosion = new Explosion();
			
			if (this.x >= 0) {
				Main._main.explosions.push(explo)
				Main._main.addChild(explo);
				explo.x = this.x;
				explo.y = this.y;
			}
			
			shootTimer.stop();
			shootTimer.removeEventListener(TimerEvent.TIMER, shoot);
		}
	}
}