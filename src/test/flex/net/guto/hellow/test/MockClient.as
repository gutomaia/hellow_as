package net.guto.hellow.test {

	import net.guto.hellow.core.ConnectionListener;
	import net.guto.hellow.core.ContactListener;

	public class MockClient implements ConnectionListener, ContactListener {
		public var logged:Boolean = false;
		public var connected:Boolean = false;
		public var group:String = null;
		public var contact:String = null;
		
		public function MockClient(){
		}

		public function onLogged():void{
			logged = true;
		}

		public function onConnected():void{
			connected = true;
		}

		public function onAddContact(contact:String):void{
			this.contact = contact;
		}

		public function onRemoveContact(contact:String):void{
		}

		public function onAddGroup(group:String):void{
			this.group = group;	
		}

		public function onRemoveGroup(group:String):void{
		}
	}
}
