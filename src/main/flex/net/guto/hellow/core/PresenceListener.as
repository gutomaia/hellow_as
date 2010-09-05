/*  HellowAs, alpha version
 *  (c) 2009 Gustavo Maia Neto (gutomaia)
 *
 *  HellowAs and all other Hellow flavors will be always
 *  freely distributed under the terms of an GPLv3 license.
 *
 *  Human Knowledge belongs to the World!
 *--------------------------------------------------------------------------*/
 
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
