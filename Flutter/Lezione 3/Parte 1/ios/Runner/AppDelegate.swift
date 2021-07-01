import UIKit
import Flutter

@UIApplicationMain
@objc class AppDelegate: FlutterAppDelegate {
  override func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
  ) -> Bool {
    GeneratedPluginRegistrant.register(with: self)
    
    let controller: FlutterViewController = window?.rootViewController as! FlutterViewController
    let methodChannel = FlutterMethodChannel(name: "flutter/nativeVIEW", binaryMessenger: controller.binaryMessenger)
    let storyboard = UIStoryboard(name: "Main", bundle: nil)
    methodChannel.setMethodCallHandler({
        (call: FlutterMethodCall, result: @escaping FlutterResult) -> Void in
        
        if call.method == "StartNativeView" {
            let myViewController = storyboard.instantiateViewController(identifier: "TestViewController")
            myViewController.modalPresentationStyle = .fullScreen
            controller.present(myViewController, animated: true, completion: nil)
        } else {
            result(FlutterMethodNotImplemented)
            return
        }
        
    })
    
    return super.application(application, didFinishLaunchingWithOptions: launchOptions)
  }
}
