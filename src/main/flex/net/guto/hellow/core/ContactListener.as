package net.guto.hellow.core {
	public interface ContactListener {
		function onAddContact(contact:String):void;
		function onRemoveContact(contact:String):void;
		function onAddGroup(group:String):void;
		function onRemoveGroup(group:String):void;
	}
}
