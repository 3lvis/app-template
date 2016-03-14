import UIKit

public class BaseCollectionViewController: UICollectionViewController {
    internal var fetcher: Fetcher

    public init(fetcher: Fetcher, collectionViewLayout: UICollectionViewLayout) {
        self.fetcher = fetcher

        super.init(collectionViewLayout: collectionViewLayout)
    }

    public required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
