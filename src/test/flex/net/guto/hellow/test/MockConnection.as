package net.guto.hellow.test {

	import net.guto.hellow.core.ConnectionHandle;

	public class MockConnection implements ConnectionHandle {
	
		public var sended:String = null;
		public var received:String = null;
		public var host:String = null;
		public var port:int = 0;

		public function connect(host:String, port:int):void {
			this.host = host;
			this.port = port;
		}

		function disconnect():void {
		}

		public function send(cmd:String):void {
			sended = cmd;
		}

		public function receive(cmd:String):void {
			received = cmd;
		}

		public function nextCommand():String {
			return null;
		}

		public function hasMoreCommands():Boolean{
			return false;
		}

	}
}
