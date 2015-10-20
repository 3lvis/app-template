import UIKit

@UIApplicationMain
class AppController: UIResponder {

    var window: UIWindow? = {
        let window = UIWindow(frame: UIScreen.mainScreen().bounds)

        return window
    }()
}

extension AppController: UIApplicationDelegate {
    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        guard let window = self.window else { fatalError("Window not found") }

        window.rootViewController = RootController()
        window.makeKeyAndVisible()

        return true
    }
}