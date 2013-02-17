package 
{
	import flash.display.Sprite;
	import flash.events.Event;
	import flash.events.MouseEvent;
	
	/**
	 * ...
	 * @author Miguel Murça
	 */
	public class Main extends Sprite 
	{
		
		private var sprite:Sprite;
		private var spriteX:Number;
		private var spriteZ:Number;
		
		public function Main():void 
		{
			if (stage) init();
			else addEventListener(Event.ADDED_TO_STAGE, init);
		}
		
		private function init(e:Event = null):void 
		{
			removeEventListener(Event.ADDED_TO_STAGE, init);
			// entry point
			
			sprite = new Sprite();
			sprite.graphics.beginFill(0xFF794B);
			sprite.graphics.drawCircle(0, 0, 15);
			sprite.graphics.endFill();
			
			sprite.x = stage.stageWidth / 2;
			sprite.y = stage.stageHeight /2;
			addChild(sprite);
			
			stage.addEventListener(Event.ENTER_FRAME, enterFrame);
			stage.addEventListener(MouseEvent.CLICK, mouseClick);
		}
		
		private function enterFrame(e:Event = void):void
		{
			spriteX = -stage.mouseX + stage.stageWidth;
			sprite.x = spriteX;
			
			spriteZ = -(stage.mouseY - stage.stageHeight / 2);
			sprite.z = spriteZ * 3; //para acentuar o efeito
		}
		
		private function mouseClick(e:Event = void):void
		{
			
		}
		
	}
	
}