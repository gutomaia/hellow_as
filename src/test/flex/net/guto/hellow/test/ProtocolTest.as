/*  HellowAs, alpha version
 *  (c) 2009 Gustavo Maia Neto (gutomaia)
 *
 *  HellowAs and all other Hellow flavors will be always
 *  freely distributable under the terms of an GPLv3 licence.
 *
 *  Human Knowledge belongs to the World!
 *--------------------------------------------------------------------------*/
 
package net.guto.hellow.test {
	import asunit.framework.TestCase;
	import net.guto.hellow.protocol.Msnp8;
	import net.guto.hellow.test.MockAuthentication;
	import net.guto.hellow.test.MockConnection;
	import net.guto.hellow.test.MockClient;

	public class ProtocolTest extends TestCase {

		public function ProtocolTest(methodName:String = null){
			super(methodName);
		}

		private var msn:Msnp8;
		private var _mockAuthentication:MockAuthentication;
		private var _mockConnection:MockConnection;
		private var _mockClient:MockClient;

		protected override function setUp():void{
			super.setUp();
			msn = new Msnp8();
			_mockAuthentication = new MockAuthentication();
			_mockConnection = new MockConnection();
			_mockClient = new MockClient();
			msn.addConnectionListener(_mockClient);
			msn.addContactListener(_mockClient);
		}

		protected override function tearDown():void{
			msn = null;
		}

		private function receive(msg:String):void{
			msn.execute(msg);
		}

		private function send(msg:String):void{
			assertEquals("Send command is invalid", msg, _mockConnection.sended);
			
			//$this->assertEquals($msg, $this->_mockConnection->sended, "Send command is invalid");
		}

		public function testSession():void{
			//send("VER 1 MSNP8 CVR0\r\n");
			receive("VER 1 MSNP8 CVR0\r\n");
			send("CVR 2 0x0409 win 4.10 i386 MSNMSGR 6.0.0602 MSMSGS dvader@empire.com\r\n");
			//receive("CVR 2 6.0.0602 1.0.000 http://download.microsoft.com/download/8/a/4/");
			//send("USR 3 TWN I dvader@empire.com\r\n");
			//receive("XFR 3 NS 207.46.106.118:1863 0 207.46.104.20:1863\r\n");
			//send("VER 4 MSNP8 CVR0\r\n");
		}
	}
}
