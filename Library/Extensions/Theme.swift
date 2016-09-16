import UIKit

extension UIColor {
    class func customColor() -> UIColor {
        return UIColor(red: 0.5, green: 0.5, blue: 0.5, alpha: 1)
    }
}

extension UIFont {
    class func regular(size: Double) -> UIFont {
        return UIFont(name: "CustomFont-Regular", size: CGFloat(size))!
    }
}