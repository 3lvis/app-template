import UIKit

@UIApplicationMain
class AppController: UIResponder {

    var window: UIWindow?

    private lazy var fetcher: Fetcher = {

        let fetcher = Fetcher(baseURL: "https://server.com", modelName: "iOS")

        return fetcher
    }()
}

extension AppController: UIApplicationDelegate {
    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        window = UIWindow(frame: UIScreen.mainScreen().bounds)
        guard let window = self.window else { fatalError("Window not found") }

        window.rootViewController = RootController(fetcher: self.fetcher)
        window.makeKeyAndVisible()

        return true
    }
}