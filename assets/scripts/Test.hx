import("Math");
import("fr.radstar.Game");

var color = 210;
var transform;
var t = 0;

function init(){
  trace(color);
  transform = this.getComponent("Transform");
}

function update(){
  t+=Game.smoothedDelta;
  transform.x = Math.sin(t) * 200 + 338;
  transform.y = Math.sin(t*5) * 30+50;

}
