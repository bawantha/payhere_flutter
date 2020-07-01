#import "PayhereFlutterPlugin.h"
#if __has_include(<payhere_flutter/payhere_flutter-Swift.h>)
#import <payhere_flutter/payhere_flutter-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "payhere_flutter-Swift.h"
#endif

@implementation PayhereFlutterPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftPayhereFlutterPlugin registerWithRegistrar:registrar];
}
@end
