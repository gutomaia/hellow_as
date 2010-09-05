/*  HellowAs, alpha version
 *  (c) 2009 Gustavo Maia Neto (gutomaia)
 *
 *  HellowAs and all other Hellow flavors will be always
 *  freely distributed under the terms of an GPLv3 license.
 *
 *  Human Knowledge belongs to the World!
 *--------------------------------------------------------------------------*/
 
package net.guto.hellow.core {

	import flash.net.Socket;

	public class SocketConnection implements ConnectionHandle {
		private var _socket:Socket;

		public function SocketConnection(){}

		private function getSocket():Socket {
//		if ($this->_socket < 0) {
//			$this->disconnect();
//		} else {
//			return $this->_socket;
//		}

			return _socket;
		}

		public function connect(host:String, port:int):void {
//		if ($this->getSocket()) {
//			socket_close($this->_socket);
//			$this->_socket == null;
//		}
//		$this->_socket = socket_create(AF_INET, SOCK_STREAM, SOL_TCP);
//		$result = socket_connect($this->_socket, $host, $port);
			
		}

		public function disconnect():void {
//		if ($this->_socket) {
//			socket_close($this->_socket);
//			$this->_socket = null;
//		} else {
//			$this->_socket = null;
//		}

		}
		
		public function send(cmd:String):void {
//		if ($this->getSocket()) {
//			socket_write($this->getSocket(), $cmd, strlen($cmd));
//			flush();
//		}

		}

		public function nextCommand(): String {
//		if ($this->getSocket()) {
//			$command = socket_read($this->getSocket(), 2048, PHP_NORMAL_READ);
//			$cmd = substr($command, 0, 3);
//			if ($cmd == 'MSG') {
//				$command_aux = explode(' ', $command);
//				$bytes = intval($command_aux[sizeof($command_aux) - 1]);
//				$payload = socket_read($this->getSocket(), $bytes);
//				$command .= $this->EL. $payload;
//			}
//		}
//		return $command;
//
			return "";
		}

		public function hasMoreCommands():Boolean {
			return true;
		}

	}
}
