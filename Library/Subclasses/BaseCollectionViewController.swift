import SweetUIKit

open class BaseCollectionViewController: SweetCollectionController {
    internal var fetcher: Fetcher

    public init(fetcher: Fetcher, collectionViewLayout: UICollectionViewLayout) {
        self.fetcher = fetcher
        super.init(withCollectionViewLayout: collectionViewLayout)
    }

    public required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
