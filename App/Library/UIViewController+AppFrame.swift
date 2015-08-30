import UIKit

extension UIViewController {
    func appFrame() -> CGRect {
        var barHeight: CGFloat = 0.0
        if let navigationController = self.navigationController {
            barHeight = navigationController.navigationBar.frame.height
        }

        var applicationFrame = UIScreen.mainScreen().applicationFrame
        applicationFrame.size.height = applicationFrame.height - barHeight

        return applicationFrame
    }
}
