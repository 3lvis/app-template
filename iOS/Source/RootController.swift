import UIKit

class RootController: BaseViewController {
    override func loadView() {
        let view = RootView(frame: UIScreen.mainScreen().bounds)
        self.view = view
    }

    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
