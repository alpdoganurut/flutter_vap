import 'dart:async';
import 'package:flutter/services.dart';

class VapController {
  static const MethodChannel _channel =
      const MethodChannel('flutter_vap_controller');

  /// return: play error:       {"status": "failure", "errorMsg": ""}
  ///         play complete:    {"status": "complete"}
  static Future<Map<dynamic, dynamic>?> playPath(String path) async {
    return _channel.invokeMethod('playPath', {"path": path});
  }

  static Future<Map<dynamic, dynamic>?> playAsset(String asset, {int loopCount = 0}) {
    return _channel.invokeMethod('playAsset', {"asset": asset, "loop": loopCount});
    // return _channel.invokeMethod('playAsset', {"asset": asset});
  }

  static stop() {
    _channel.invokeMethod('stop');
  }

  static sayHello2() {
    print('Hello from VapController');
  }
}
