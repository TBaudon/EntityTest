import("Math");
import("openfl.Lib");
import("fr.radstar.Game");

var color = 210;
var transform;
var t = Math.random() * 1000;
var sprite = null;

var startX = 0;
var stratY = 0;

function init(){
	transform = this.getComponent("Transform");
	startX = Math.random() * Lib.current.stage.stageWidth;
	startY = Math.random() * Lib.current.stage.stageHeight;
	transform.x = startX;
	transform.y = startY;
}

function update(){
	t+=Game.smoothedDelta;
	transform.x = startX + Math.sin(t) * 200;
	transform.y = startY + Math.sin(t*5) * 30;
}
