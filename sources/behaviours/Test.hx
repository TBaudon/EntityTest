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
		transform = getComponent(Transform);
		
		startX = transform.x;
		startY = transform.y;
		
		updateTransform();
		
		i = Math.random() * 1000;
	}
	
	override public function update() : Void {
		i += 0.01;
		updateTransform();
	}
	
	function updateTransform() {
		transform.x = startX + Math.sin(i) * 200;
		transform.y = startY + Math.sin(i * 5) * 30;
	}
	
}