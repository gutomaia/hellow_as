/*  HellowAs, alpha version
 *  (c) 2009 Gustavo Maia Neto (gutomaia)
 *
 *  HellowAs and all other Hellow flavors will be always
 *  freely distributed under the terms of an GPLv3 license.
 *
 *  Human Knowledge belongs to the World!
 *--------------------------------------------------------------------------*/
 

package net.guto.hellow.protocol  {
	
	import net.guto.hellow.core.ConnectionHandle;
	import net.guto.hellow.core.SocketConnection;
	import net.guto.hellow.core.CommandListener;

	public class Msnp {

		protected var EL:String = "\r\n";

		protected var _trid:int = 1;

		private var _connectionHandle:ConnectionHandle;


		public function Msnp(){
			_connectionHandle = new SocketConnection();
		}

		public function setConnectionHandle(connectionHandle:ConnectionHandle):void{
			_connectionHandle = connectionHandle;
		}

		private var _commandListener:CommandListener = null;

		public final function addCommandListener(commandListener:CommandListener):void{
			_commandListener = commandListener;
		}

		protected final function onCommandReceived(command:String):void{if(_commandListener != null) _commandListener.onCommandReceived(command);}

		protected final function onCommandSended(command:String):void{if(_commandListener != null) _commandListener.onCommandReceived(command);}

		public function getHost():String {trace ("abstract method Msnp.getHost() not implemented"); return null;}
		public function getPort():int {trace("abstract method Msnp.getPort() not implemented"); return 0;}
 
		public function execute(command:String):void {trace ("abstract method Msnp.execute(command) not implemented"); } 

		protected final function send(command:String):void {
			_connectionHandle.send(command);
			onCommandSended(command);
			_trid++;
		}

		protected function connect(host:String, port:int):void {
			_connectionHandle.connect(host, port);
		}

		protected function disconnect():void {
			_connectionHandle.disconnect();
		}

		protected final function listen():void {
			while (_connectionHandle.hasMoreCommands()) {
				var command:String = _connectionHandle.nextCommand();
				//if (trim(command) != "") {
					execute(command);
					onCommandReceived(command);
				//}
			}
		}
	}
}
