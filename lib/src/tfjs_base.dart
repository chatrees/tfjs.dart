@JS('tf')
library tf;

import "package:js/js.dart";

// TODO: Put public facing types in this file.

@JS()
@anonymous
class Layer {

}

@JS()
@anonymous
class LayerArgs {
  List inputShape;
  int units;
  bool useBias;
}

@JS()
@anonymous
class Layers {
  external dynamic dense(LayerArgs args);
}

@JS()
@anonymous
class Model {

}

@JS()
@anonymous
class Sequential extends Model {
  external dynamic add(Layer layer);
}

@JS('sequential')
external Sequential sequential();

@JS('layers')
external Layers get layers;