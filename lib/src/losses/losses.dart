@JS('tf')
library losses;

import "package:js/js.dart";
import 'package:tfjs/src/tfjs_base.dart';

@JS()
@anonymous
class Losses {
  external Tensor meanSquaredError(/*Tensor labels, Tensor predictions, Tensor weights, dynamic reduction*/);
}

@JS('losses')
external Losses get losses;
