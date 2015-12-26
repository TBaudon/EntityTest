package behaviours;

import fr.radstar.engine.Behaviour;

import fr.radstar.engine.components.Transform;

class Test extends Behaviour {

  public var color : UInt;

  var mTransform : Transform;

  override public function init(){
    trace(color);

    mTransform = getComponent(Transform);
  }

  override public function update(){
    mTransform.x++;
  }

}
