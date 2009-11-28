/*  HellowAs, alpha version
 *  (c) 2009 Gustavo Maia Neto (gutomaia)
 *
 *  HellowAs and all other Hellow flavors will be always
 *  freely distributable under the terms of an GPLv3 licence.
 *
 *  Human Knowledge belongs to the World!
 *--------------------------------------------------------------------------*/
 
package net.guto.hellow.core {
	public interface ContactListener {
		function onAddContact(contact:String):void;
		function onRemoveContact(contact:String):void;
		function onAddGroup(group:String):void;
		function onRemoveGroup(group:String):void;
	}
}
