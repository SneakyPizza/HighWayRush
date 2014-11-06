package src 
{
	import flash.display.MovieClip;
	import flash.events.Event;
	import flash.display.SimpleButton;
	import flash.events.MouseEvent;
	import flash.text.TextField;
	import flash.text.TextFormat;
	/**
	 * ...
	 * @author Coen Meijer
	 */
	public class Eindscherm extends MovieClip
	{
		private var retryButton:SimpleButton = new RetryButtonArt;
		private var menuButton:SimpleButton = new BackButtonArt;
		private var punten:TextField;
		private var puntenformat:TextFormat = new TextFormat();
		
		public function Eindscherm() {
			addEventListener(Event.ADDED_TO_STAGE, init);
		}
		private function init(e:Event) {
			addChild(retryButton);
			retryButton.x = 200;
			retryButton.y = 620;			
			
			addChild(menuButton);
			menuButton.x = 200;
			menuButton.y = 520;
			
			puntenformat.size = 40;
			
			punten = new TextField();
			punten.defaultTextFormat = puntenformat;
			punten.textColor = 0x000000;
			punten.x = 700;
			punten.y = stage.stageHeight / 2;
			punten.width = 400;
			addChild(punten);
			punten.text = "You scored: " + String(Main._main.totalScore) + "points!";
			
			retryButton.addEventListener(MouseEvent.CLICK, retryNow);
			menuButton.addEventListener(MouseEvent.CLICK, menuNow);
		}
		private function retryNow(e:MouseEvent) {
			removeChild(menuButton);
			menuButton.removeEventListener(MouseEvent.CLICK, menuNow);
			removeChild(retryButton);
			retryButton.removeEventListener(MouseEvent.CLICK, retryNow);
			
			Main._main.init();
		}
		private function menuNow(e:MouseEvent) {
			removeChild(menuButton);
			menuButton.removeEventListener(MouseEvent.CLICK, menuNow);
			removeChild(retryButton);
			retryButton.removeEventListener(MouseEvent.CLICK, retryNow);
			
			Main._main.startSchermStart();
		}
	}
}