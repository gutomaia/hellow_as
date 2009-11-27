/*  HellowAs, alpha version
 *  (c) 2009 Gustavo Maia Neto (gutomaia)
 *
 *  HellowAs and all other Hellow flavors is and will be always
 *  freely distributable under the terms of an GPLv3 licence.
 *
 *  Human Knowledge belongs to the World!
 *--------------------------------------------------------------------------*/

package net.guto.hellow.test {

	import net.guto.hellow.core.Authentication;

	public class MockAuthentication implements Authentication{
	
		public function authenticate(username:String, password:String, lc:String):String {
			return "t=53*1hAu8ADuD3TEwdXoOMi08sD*2!cMrntTwVMTjoB3p6stWTqzbkKZPVQzA5NOt19SLI60PY!b8K4YhC!Ooo5ug$$&p=5eKBBC!yBH6ex5mftp!a9DrSb0B3hU8aqAWpaPn07iCGBw5akemiWSd7t2ot!okPvIR!Wqk!MKvi1IMpxfhkao9wpxlMWYAZ!DqRfACmyQGG112Bp9xrk04!BVBUa9*H9mJLoWw39m63YQRE1yHnYNv08nyz43D3OnMcaCoeSaEHVM7LpR*LWDme29qq2X3j8N";
		}
	}
}
