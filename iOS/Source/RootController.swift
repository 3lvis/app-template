import UIKit

class RootController: BaseViewController {
    override func loadView() {
        let view = RootView(frame: UIScreen.main.bounds)
        self.view = view
    }

    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
