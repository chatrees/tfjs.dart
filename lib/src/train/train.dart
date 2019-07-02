@JS('tf')
library train;

import "package:js/js.dart";
import 'package:tfjs/src/tfjs_base.dart';

@JS()
@anonymous
class Optimizer {
  external void minimize(Function f, bool returnCost, List<Variable> varList);
}

@JS()
@anonymous
class Train {
  external Optimizer adam(/*num learningRate, num beta1, num beta2, num epsilon*/);
}

@JS('train')
external Train get train;
