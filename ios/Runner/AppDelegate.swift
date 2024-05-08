import UIKit
import Flutter
import GoogleMaps
@UIApplicationMain
@objc class AppDelegate: FlutterAppDelegate {
  override func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
  ) -> Bool {
    GeneratedPluginRegistrant.register(with: self)
    //  GMSServices.provideAPIKey("AIzaSyAwJwXB_uu9SDA5hlInzkft0hRNLxUEmvM")
     GMSServices.provideAPIKey("AIzaSyDJwqta5Y3fSAEem4qvCkQ6365ZAZ-akXU")

    
    return super.application(application, didFinishLaunchingWithOptions: launchOptions)
  }
}
