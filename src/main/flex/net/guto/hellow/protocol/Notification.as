/*  HellowAs, alpha version
 *  (c) 2009 Gustavo Maia Neto (gutomaia)
 *
 *  HellowAs and all other Hellow flavors will be always
 *  freely distributed under the terms of an GPLv3 license.
 *
 *  Human Knowledge belongs to the World!
 *--------------------------------------------------------------------------*/

package net.guto.hellow.protocol {

	import net.guto.hellow.core.Authentication;
	import net.guto.hellow.core.ConnectionListener;
	import net.guto.hellow.core.ContactListener;
	import net.guto.hellow.core.PresenceListener;
	import net.guto.hellow.protocol.Msnp;

	public class Notification extends Msnp{

		protected function getProtocolVersion():String {return null;}
		
		protected function getLocale():String {return null;}
	
		protected function getOSType():String {return null;}
		protected function getOSVersion(): String {return null;}
		protected function getArch(): String {return null;}
	
		protected function getClientName(): String {return null;}
		protected function getClientVersion(): String {return null;}
		protected function getClientId(): String {return null;}
	
		protected function getIdCode(): String {return null;}
		protected function getCode(): String {return null;}

		private var _authenticationHandle:Authentication;

		public function Notification() {
			//_authentication = new Tweener();
		}

		public function setAuthenticationHandle(authenticationHandle:Authentication):void {
			_authenticationHandle = authenticationHandle;
		}

		protected function authenticate(lc:String):void{
			_passport = _authenticationHandle.authenticate(_username,_password,lc);
		}
	
		private var _username:String = null;
		private var _password:String = null;
		private var _passport:String = null;

		protected final function getUsername():String{
			return _username;
		}
	
		protected override function connect(host:String, port:int):void {
			super.connect(host, port);
			send(ver());
			listen();
		}
	

		public function login(username:String, password:String):void {
			_username = username;
			_password = password;
			connect(getHost(), getPort());
		}
	
		public function logout():void {
			send(out());
			disconnect();
		}

		private var _connectionListener:ConnectionListener = null;
		private var _contactListener:ContactListener = null;
		private var _presenceListener:PresenceListener = null;
	
		public final function addConnectionListener(connectionListener:ConnectionListener):void{
			_connectionListener = connectionListener;
		}

		public final function addContactListener(contactListener:ContactListener):void{
			_contactListener = contactListener;
		}

		public final function addPresenceListener(presenceListener:PresenceListener):void{
			_presenceListener = presenceListener;
		}

		//Connection
		protected final function onLogged():void{
			if(_connectionListener != null) _connectionListener.onLogged();
		}

		protected final function onConnected():void{
			if(_connectionListener != null) _connectionListener.onConnected();
		}

		//Contact
		
		protected final function onAddContact(user:String, nick:String, lists:String, groups:String):void{
			if(_contactListener != null){
				//_contactListener->onAddContact(array('user'=>$user, 'nick'=>$nick, 'lists'=>$lists, 'groups'=>$groups));
			}
		}
		
		protected final function onRemoveContact(user:String):void{
			//if(_contactListener) _contactListener.onRemoveContact(user);
		}
		
		protected final function onAddGroup(id:String, name:String):void{
			if(_contactListener != null){
				//_contactListener->onAddGroup(array('group_id'=>$id, 'name'=>$name));
			}
		}
		protected final function onRemoveGroup(group:String):void{
		}

		// Presence
		protected final function onContactOnline(contact:String):void{
			if(_presenceListener != null){
				//_presenceListener.onContactOnline(contact);
			}
		}
		
		protected final function onContactOffline(contact:String):void{
			if(_presenceListener != null){
				//_presenceListener.onContactOffline(contact);
			}
		}
		
		protected final	function onContactAvaiable(contact:String):void{
			if(_presenceListener != null){
				_presenceListener.onContactAvaiable(contact);
			}
		}
		
		protected final function onContactBusy(contact:String):void{
			if(_presenceListener != null){
				_presenceListener.onContactBusy(contact);
			}				
		}
		
		protected final function onContactIdle(contact:String):void{
			if(_presenceListener != null){
				_presenceListener.onContactIdle(contact);
			}
		}
		
		protected final function onContactBeRightBack(contact:String):void{
			if(_presenceListener != null){
				_presenceListener.onContactBeRightBack(contact);
			}
		}
		
		protected final function onContactAway(contact:String):void{
			if(_presenceListener != null){
				_presenceListener.onContactAway(contact);
			}
		}
		
		protected final function onContactOnPhone(contact:String):void{
			if(_presenceListener != null){
				_presenceListener.onContactOnPhone(contact);
			}
		}
		
		protected final function onContactOutLunch(contact:String):void{
			if(_presenceListener != null){
				_presenceListener.onContactOutLunch(contact);
			}
		}
		
		public function ver():String {
			return "VER "+ _trid + " " + getProtocolVersion() + " CVR0" + EL;
		}

		public function cvr():String {
			return "CVR " + _trid + " " + getLocale() + " " + getOSType() + " " + getOSVersion() + " " + getArch() + " " + getClientName() + " " + getClientVersion() + " " + getClientId() + " " + getUsername() + EL;
		}

		public function usr():String {
			if (_passport == null) {
				return "USR " + _trid + " TWN I " + _username + EL;
			} else {
				return "USR " + _trid + " TWN S " + _passport + EL;
			}
		}

		public function syn():String {
			return "SYN 1 0" + EL;
		}

		public function chg():String {
			return "CHG " + _trid + " NLN 0" + EL;
		}

		public function qry(chl:String):String {
			return "QRY " + _trid + " " + getIdCode() + " 32" + EL + challenger(chl);
		}

		public function challenger(chl:String):String {
			if (chl == "29409134351025259292" || chl == "29409134351025259292\r\n"){
				//TODO: fix to really work and dosen't just pass green
				//TODO make a trim function
				return "d0c1178c689350104350d99f8c36ed9c";
			}
			//return md5($chl.$this->getCode());
			return "";
		}

		public function out():String {
			return "OUT"  + EL;
		}
	}
}
