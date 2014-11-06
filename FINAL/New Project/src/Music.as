package src {

	import flash.display.MovieClip;
    import flash.media.SoundChannel;
    import flash.media.Sound;
    import flash.events.Event;

    public class Music extends MovieClip {

		private var tutorialSound:Sound = new soundTutorial();
		private var gameOverSound:Sound = new soundGameOver();
		private var startSound:Sound = new soundStart();
		private var gameSound:Sound = new soundGame();
        public var soundChannel:SoundChannel;
       
		public function Music() {
          
        }
        public function gameMusic(e:Event):void {
            soundChannel = gameSound.play();
            soundChannel.addEventListener(Event.SOUND_COMPLETE, gameMusic);
        }
	}
}