package net.guto.hellow.core {
	public interface ConnectionHandle {
		function connect(host:String, port:int):void;
		function disconnect():void;
		function nextCommand():String;
		function hasMoreCommands():Boolean;
		function send(cmd:String):void;
	}
}

