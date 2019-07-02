@JS('tf')
library util;

import "package:js/js.dart";

@JS()
@anonymous
class Util {
  external void shuffle(List data);
}

@JS('util')
external Util get util;


