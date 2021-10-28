import 'dart:async';

import 'package:flutter/services.dart';

class FirebaseInstanceId {
  static const MethodChannel _channel = MethodChannel('firebase_instance_id');

  static Future<String?> get appInstanceId async {
    final String? instanceId = await _channel.invokeMethod('getInstanceId');
    return instanceId;
  }
}
