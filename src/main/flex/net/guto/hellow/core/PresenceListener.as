package net.guto.hellow.core {
	public interface PresenceListener {
		function onContactAvaiable(contact:String):void;
		function onContactBusy(contact:String):void;
		function onContactIdle(contact:String):void;
		function onContactBeRightBack(contact:String):void;
		function onContactAway(contact:String):void;
		function onContactOnPhone(contact:String):void;
		function onContactOutLunch(contact:String):void;
	}
}
