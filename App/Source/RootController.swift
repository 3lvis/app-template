import UIKit

class RootController: UIViewController {
    override func loadView() {
        let view = RootView(frame: appFrame())
        self.view = view
    }

    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
