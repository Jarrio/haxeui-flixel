package haxe.ui.backend;

import flixel.FlxGame;
import haxe.ui.backend.flixel.FlxHaxeUIAppState;
import openfl.Lib;

class AppImpl extends AppBase {
    public function new() {
    }
    
    private override function build() {
        #if (flixel < "5.0.0")
        Lib.current.stage.addChild(new FlxGame(0, 0, FlxHaxeUIAppState, 1, 60, 60, true));
        #else
        Lib.current.stage.addChild(new FlxGame(0, 0, FlxHaxeUIAppState, 60, 60, true));
        #end
        if (Toolkit.backendProperties.getPropBool("haxe.ui.flixel.fps.show")) {
            var x = Toolkit.backendProperties.getPropInt("haxe.ui.flixel.fps.left");
            var y = Toolkit.backendProperties.getPropInt("haxe.ui.flixel.fps.top");
            var c = Toolkit.backendProperties.getPropCol("haxe.ui.flixel.fps.color");
            Lib.current.stage.addChild(new openfl.display.FPS(x, y, c));
        }
    }
}
