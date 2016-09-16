import SweetUIKit

open class BaseTableViewController: SweetTableController {
    internal var fetcher: Fetcher

    public init(fetcher: Fetcher, tableViewStyle: UITableViewStyle = .plain) {
        self.fetcher = fetcher

        super.init(with: tableViewStyle)
    }

    public required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
