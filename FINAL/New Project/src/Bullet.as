﻿package src{	import flash.events.Event;	import flash.display.MovieClip;	import flash.display.Sprite;	import flash.geom.Point;	/**	 * ...	 * @author Coen Meijer	 */	public class Bullet extends MovieClip{				public var art:MovieClip;						public function Bullet(){			art = new BulletArt();			addChild(art);		}				public function movement($speed:Number):void{			var movementSpeed:Point = new Point();			movementSpeed.x = Math.cos(this.rotation / 180 * Math.PI) * $speed;			movementSpeed.y = Math.sin(this.rotation / 180 * Math.PI) * $speed;						this.x += movementSpeed.x;			this.y += movementSpeed.y;		}	}}