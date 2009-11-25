package net.guto.hellow.core {
	public interface CommandListener {
		function onCommandReceived(command:String): void;
		function onCommandSended(command:String): void;
	}
}
