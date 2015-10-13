import UIKit

class RootView: UIView {
    override init(frame: CGRect) {
        super.init(frame: frame)

        backgroundColor = .redColor()
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
