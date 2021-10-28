#import "FirebaseInstanceIdPlugin.h"
#if __has_include(<firebase_instance_id/firebase_instance_id-Swift.h>)
#import <firebase_instance_id/firebase_instance_id-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "firebase_instance_id-Swift.h"
#endif

@implementation FirebaseInstanceIdPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftFirebaseInstanceIdPlugin registerWithRegistrar:registrar];
}
@end
