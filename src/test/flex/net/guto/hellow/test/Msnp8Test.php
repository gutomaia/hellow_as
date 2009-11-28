<?php

//Bootstrap
require '../src/client.php';

class Msnp8Test extends PHPUnit_Framework_TestCase {

	public function setup(){
		Client::init();
	}


	public function testVER(){
		$msn = new Hellow_Core_Msnp8();
		$this->assertEquals("VER 1 MSNP8 CVR0\r\n",$msn->ver());
		return $msn;
	}

	/**
	* @depends testVER
	*/

	public function testCVR($msn){
		var_dump ($msn);
//		$this->assertEquals("CVR 2 0x0409 win 4.10 i386 MSNMSGR 6.0.0602 MSMSGS\r\n", $msn->cvr());
//		return $msn;
	}

	/**
	* @depends testCVR
	*/

	public function testUSR(){
	}

	public function testLSG(){
	}
}
