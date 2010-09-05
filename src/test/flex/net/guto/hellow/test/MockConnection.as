/*  HellowAs, alpha version
 *  (c) 2009 Gustavo Maia Neto (gutomaia)
 *
 *  HellowAs and all other Hellow flavors will be always
 *  freely distributed under the terms of an GPLv3 license.
 *
 *  Human Knowledge belongs to the World!
 *--------------------------------------------------------------------------*/
 
package net.guto.hellow.test {

	import net.guto.hellow.core.ConnectionHandle;

	public class MockConnection implements ConnectionHandle {
	
		public var sended:String = null;
		public var received:String = null;
		public var host:String = null;
		public var port:int = 0;
		
		public function MockConnection() {
		}

		public function connect(host:String, port:int):void {
			this.host = host;
			this.port = port;
		}

		public function disconnect():void {
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
