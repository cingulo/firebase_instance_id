import Flutter
import UIKit
import FirebaseAnalytics

public class SwiftFirebaseInstanceIdPlugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: "firebase_instance_id", binaryMessenger: registrar.messenger())
    let instance = SwiftFirebaseInstanceIdPlugin()
    registrar.addMethodCallDelegate(instance, channel: channel)
  }

  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
    if call.method == "getInstanceId" {
        let instanceId = Analytics.appInstanceID()
        result(instanceId)
    }
  }
}
