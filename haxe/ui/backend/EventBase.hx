package haxe.ui.backend;

import haxe.ui.events.UIEvent;

class EventBase {
	
	public function new() { }
	
	public function cancel() { }
	
	private function postClone(event:UIEvent) { }
}
