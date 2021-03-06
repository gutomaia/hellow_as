/*  HellowAs, alpha version
 *  (c) 2009 Gustavo Maia Neto (gutomaia)
 *
 *  HellowAs and all other Hellow flavors will be always
 *  freely distributed under the terms of an GPLv3 license.
 *
 *  Human Knowledge belongs to the World!
 *--------------------------------------------------------------------------*/
 
package net.guto.hellow.core {
	public interface ConnectionHandle {
		function connect(host:String, port:int):void;
		function disconnect():void;
		function nextCommand():String;
		function hasMoreCommands():Boolean;
		function send(cmd:String):void;
	}
}

