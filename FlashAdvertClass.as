package
{
	import flash.display.Loader;
	import flash.display.LoaderInfo;
	import flash.net.URLRequest;
	import flash.display.Bitmap;
	import flash.events.Event;
	import flash.events.MouseEvent;
	import flash.display.MovieClip;
	import flash.events.TimerEvent;
	import gs.TweenMax;
	import gs.easing.Bounce;
	import gs.easing.Elastic;
	import flash.events.TimerEvent;
	import flash.utils.Timer;
	
//	import flash.net.URLRequest; 
//import flash.net.navigateToURL;

//var lit:URLRequest;
//lit = new URLRequest(“http://www.lit.ie”);
//navigateToURL(lit, “_blank”);
	
	public class FlashAdvertClass extends MovieClip
	{
		var banner1 = new TopBox();
		
		var banner2 = new MiddleBox();
		
		var banner3 = new BottomBox();
		
		var myTimer1:Timer = new Timer(500, 1);
		
		var myTimer2:Timer = new Timer(4000, 1);
		
		var myTimer3:Timer = new Timer(4000, 1);
		
		var myTimer4:Timer = new Timer(4000, 1);
		
		public function FlashAdvertClass()
		{
			myTimer1.addEventListener(TimerEvent.TIMER, myTimerHandler1);
			myTimer1.start();
		}
		
		function myTimerHandler1(e:TimerEvent)
		{
			this.addChild(banner1);
			banner1.x = -370;
			TweenMax.to(banner1, 3, {x:0, ease:Bounce.easeOut});
			
			myTimer2.addEventListener(TimerEvent.TIMER, myTimerHandler2);
			myTimer2.start();
		}
			
		function myTimerHandler2(e:TimerEvent)
		{
			this.addChild(banner2);
			banner2.y = 200;
			TweenMax.to(banner2, 3, {y:0, ease:Elastic.easeOut});
			
			myTimer3.addEventListener(TimerEvent.TIMER, myTimerHandler3);
			myTimer3.start();
		}	

		function myTimerHandler3(e:TimerEvent)
		{
			this.addChild(banner3);
			banner3.alpha = 0;
			
			TweenMax.to(banner3, 3, {alpha:1});
			
			myTimer4.addEventListener(TimerEvent.TIMER, myTimerHandler4);
			myTimer4.start();
		}
		
		function myTimerHandler4(e:TimerEvent)
		{
			this.removeChild(banner1);
			this.removeChild(banner2);
			this.removeChild(banner3);
			
			myTimer1.start();
		}
	}
	
}
