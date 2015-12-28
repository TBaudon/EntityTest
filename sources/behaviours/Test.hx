package behaviours;

import fr.radstar.engine.Behaviour;
import fr.radstar.engine.components.Transform;

/**
 * ...
 * @author Thomas B
 */
class Test extends Behaviour{

	var startX : Float = 0;
	var startY : Float = 0;
	
	var transform : Transform;
	var i : Float;
	
	override public function init() : Void {
		startX = Math.random() * 800;
		startY = Math.random() * 600;
		i = Math.random() * 1000;
		transform = getComponent(Transform);
	}
	
	override public function update() : Void {
		i += 0.01;
		transform.x = startX + Math.sin(i) * 200;
		transform.y = startY + Math.sin(i*5) * 30;
	}
	
}