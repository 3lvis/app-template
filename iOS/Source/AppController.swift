import UIKit
import CoreData

@UIApplicationMain
class AppController: UIResponder, UIApplicationDelegate {

    var window: UIWindow? = {
        let window = UIWindow(frame: UIScreen.mainScreen().bounds)
        window.backgroundColor = UIColor.whiteColor()

        return window
    }()

    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        if let window = self.window {
            window.rootViewController = RootController()
            window.makeKeyAndVisible()
        }
        return true
    }
}

