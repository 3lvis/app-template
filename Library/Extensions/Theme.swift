import UIKit

struct Theme {
}

extension Theme {
    static func light(size: Double) -> UIFont {
        return UIFont.systemFont(ofSize: CGFloat(size), weight: UIFontWeightLight)
    }

    static func regular(size: Double) -> UIFont {
        return UIFont.systemFont(ofSize: CGFloat(size), weight: UIFontWeightRegular)
    }

    static func medium(size: Double) -> UIFont {
        return UIFont.systemFont(ofSize: CGFloat(size), weight: UIFontWeightMedium)
    }

    static func bold(size: Double) -> UIFont {
        return UIFont.systemFont(ofSize: CGFloat(size), weight: UIFontWeightBold)
    }
}

extension Theme {
    static var customColor: UIColor {
        return UIColor(red: 0.5, green: 0.5, blue: 0.5, alpha: 1)
    }
}
