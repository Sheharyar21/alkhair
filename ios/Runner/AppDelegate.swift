import UIKit
import Flutter
import background_locator

@UIApplicationMain
@objc class AppDelegate: FlutterAppDelegate {


func registerPlugins(registry: FlutterPluginRegistry) -> () {
    if (!registry.hasPlugin("BackgroundLocatorPlugin")) {
        GeneratedPluginRegistrant.register(with: registry)
    }
}


  override func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?

  ) -> Bool {
    GeneratedPluginRegistrant.register(with: self)
    BackgroundLocatorPlugin.setPluginRegistrantCallback(registerPlugins)
    return super.application(application, didFinishLaunchingWithOptions: launchOptions)
  }
}
