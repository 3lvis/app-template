import UIKit

extension UIColor {
    class func customColor() -> UIColor {
        return UIColor(red: 0.5, green: 0.5, blue: 0.5, alpha: 1)
    }
}

extension UIFont {
    class func light(size: Double) -> UIFont {
        return UIFont.systemFont(ofSize: CGFloat(size), weight: UIFontWeightLight)
    }

    class func regular(size: Double) -> UIFont {
        return UIFont.systemFont(ofSize: CGFloat(size), weight: UIFontWeightRegular)
    }

    class func medium(size: Double) -> UIFont {
        return UIFont.systemFont(ofSize: CGFloat(size), weight: UIFontWeightMedium)
    }

    class func bold(size: Double) -> UIFont {
        return UIFont.systemFont(ofSize: CGFloat(size), weight: UIFontWeightBold)
    }
}
