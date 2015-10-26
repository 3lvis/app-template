import UIKit

public class BaseViewController: UIViewController {
    internal var fetcher: Fetcher

    // MARK: - Initializers

    public init(fetcher: Fetcher) {
        self.fetcher = fetcher

        super.init(nibName: nil, bundle: nil)
    }

    public required init!(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
