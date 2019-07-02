@JS('tf')
library tf;

import 'dart:async';

import "package:js/js.dart";
import 'package:tfjs/src/train/train.dart';

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
class CompileArgs {
  Optimizer optimizer;
  String loss;
  List<String> metrics;
}

@JS()
@anonymous
class Model {
  external void compile(CompileArgs args);
}

@JS()
@anonymous
class FitArgs {
  int batchSize;
  int epochs;
  dynamic verbose;
  dynamic callbacks;
  double validationSplit;
  List<Tensor> validationData;
  bool shuffle;
  num classWeight;
  Tensor sampleWeight;
  int initialEpoch;
  int stepsPerEpoch;
  int validationSteps;
  dynamic yieldEvery;
}


@JS()
@anonymous
class Sequential extends Model {
  external dynamic add(Layer layer);
  external dynamic fit(Tensor x, Tensor y, FitArgs args);
}

@JS()
@anonymous
class Tensor {
  external dynamic flatten();
  external dynamic asScalar();
  external dynamic as1D();
  external dynamic as2D(int rows, int columns);
  external dynamic as3D(int rows, int columns, int depth);
  external dynamic as4D(int rows, int columns, int depth, int depth2);
  external dynamic as5D(int rows, int columns, int depth, int depth2, int depth3);
  external Tensor asType(String dtype);
  external dynamic buffer();
  external dynamic bufferSync();
  external dynamic array();
  external dynamic arraySync();
  external dynamic data();
  external dynamic dataSync();
  external dynamic dispose();
  external dynamic toFloat();
  external dynamic toInt();
  external dynamic toBool();
  external dynamic print(bool verbose);
  external dynamic reshape(List<int> newShape);
  external Tensor reshapeAs(Tensor tensor);
  external Tensor expandDims(int axis);
  external Tensor cumsum(int axis, bool exclusive, bool reverse);
  external Tensor squeeze(List<int> axis);
  external Tensor clone();
  external String toString();
  external Tensor div(Tensor tensor);
  external Tensor max();
  external Tensor min();
  external Tensor sub(Tensor tensor);
}

@JS()
@anonymous
class Variable extends Tensor {

}

@JS('sequential')
external Sequential sequential();

@JS('layers')
external Layers get layers;

@JS('tidy')
external dynamic tidy(Function function);

@JS('tensor2d')
external Tensor tensor2d(List values, List<num> shape, String dtype);