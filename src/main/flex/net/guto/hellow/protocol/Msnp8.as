/*  HellowAs, alpha version
 *  (c) 2009 Gustavo Maia Neto (gutomaia)
 *
 *  HellowAs and all other Hellow flavors will be always
 *  freely distributable under the terms of an GPLv3 licence.
 *
 *  Human Knowledge belongs to the World!
 *--------------------------------------------------------------------------*/
 

package net.guto.hellow.protocol {
	import net.guto.hellow.protocol.Notification;

	public class Msnp8 extends Notification {
	
		private var MSN_HOST:String = "messenger.hotmail.com";
		private var MSN_PORT:int = 1863;
	
		private var PROTOCOL_VERSION:String = "MSNP8";
		private var LOCALE_ID:String = "0x0409";
	
		private var OS_TYPE:String = "win";
		private var OS_VERSION:String = "4.10"; //windows 98;
		private var CPU_ARCHITECTURE:String = "i386";
		private var CLIENT_NAME:String = "MSNMSGR";
		private var CLIENT_VERSION:String = "6.0.0602"; //5.0.0544
		//Chalenger
		private var CLIENT_ID:String = "MSMSGS";
		private var CLIENT_IDCODE:String = "msmsgs@msnmsgr.com";
		private var CLIENT_CODE:String = "Q1P7W2E4J9R8U3S5"; // needed for the chalenger


		public function Msnp8(){
			super();
		}

		override public function getHost():String {
			return MSN_HOST;
		}

		override public function getPort():int {
			return MSN_PORT;
		}

		override protected function getProtocolVersion():String {
			return PROTOCOL_VERSION;
		}

		override protected function getLocale():String {
			return LOCALE_ID;
		}

		override protected function getOSType():String {
			return OS_TYPE;
		}

		override protected function getOSVersion():String {
			return OS_VERSION;
		}
	
		override protected function getArch():String{
			return CPU_ARCHITECTURE;
		}

		override protected function getClientName():String {
			return CLIENT_NAME;
		}

		override protected function getClientVersion():String{
			return CLIENT_VERSION;
		}

		override protected function getClientId():String{
			return CLIENT_ID;
		}

		override protected function getIdCode():String{
			return CLIENT_IDCODE;
		}

		override protected function getCode():String{
			return CLIENT_CODE;
		}

		override public function execute(command:String):void {
			var params:Array = command.split(" ");
			if (params[0] == "VER") {
				send(cvr());
			}else if (params[0] == "CVR"){
				send(usr());
			} else if (params[0] == "XFR"){
				var host_port:Array = params[3].split(":");
				connect(host_port[0],host_port[1]);
			}else if (params[0] == "USR"){
				if (params[2] == "TWN"){
					authenticate(params[4]);
					send(usr());
				}else if (params[2] == "OK"){
					onLogged();
					send(syn());
				}
			}else if (params[0] == "SYN") {
				send(chg());
			}/* GTC,BLP,PRP */ else if (params[0] == "LSG") {
				//$this->onAddGroup($params[1], $params[2], $params[3]);
			} else if (params[0] == "LST"){
				//if (sizeof($params) == 5) {						
				//	$this->onAddContact($params[1], $params[2], $params[3], $params[4]);
				//} else {
				//	$this->onAddContact($params[1], $params[2], $params[3]);
				//}
			}/* PHH,PHW,PHM,MOB,MBE,BPR,ILN,FLN,NLN,MSG,RNG */ else if (params[0] == "CHL"){
				//$this->send($this->qry($params[2]));
			}/* QRY, 207 */ else {
			}
		}
	}
}
