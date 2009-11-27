/*  HellowAs, alpha version
 *  (c) 2009 Gustavo Maia Neto (gutomaia)
 *
 *  HellowAs and all other Hellow flavors is and will be always
 *  freely distributable under the terms of an GPLv3 licence.
 *
 *  Human Knowledge belongs to the World!
 *--------------------------------------------------------------------------*/

package net.guto.hellow.core {
	public interface ConnectionListener {
		function onLogged():void;
		function onConnected():void;
	}
}
