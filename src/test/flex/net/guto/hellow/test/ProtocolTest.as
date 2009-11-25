package net.guto.hellow.test {
	import asunit.framework.TestCase;
	import net.guto.hellow.protocol.Msnp8;

	public class ProtocolTest extends TestCase {

		public function ProtocolTest(){
			super();
		}

		private var msn:Msnp8;
		private var _receivedMessage:String;
		private var _sendedMessage:String;

		protected override function setUp():void{
			msn = new Msnp8();
		}

		protected override function tearDown():void{
			msn = null;
		}

		private function receive(msg:String):void{
			//msn.execute(msg);
		}

		private function send(msg:String):void{
		}

		public function testSession():void{
			send("VER 1 MSNP8 CVR0\r\n");
			receive("VER 1 MSNP8 CVR0\r\n");
			send("CVR 2 0x0409 win 4.10 i386 MSNMSGR 6.0.0602 MSMSGS dvader@empire.com\r\n");
			receive("CVR 2 6.0.0602 1.0.000 http://download.microsoft.com/download/8/a/4/");
			send("USR 3 TWN I dvader@empire.com\r\n");
			receive("XFR 3 NS 207.46.106.118:1863 0 207.46.104.20:1863\r\n");
			send("VER 4 MSNP8 CVR0\r\n");
		}
	}
}
