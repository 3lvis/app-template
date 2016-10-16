import UIKit

class ItemsController: UIViewController {
    var fetcher: Fetcher
    open var tableView: UITableView

    var cellIdentifier: String {
        return String(describing: UITableViewCell.self)
    }

    public init(style: UITableViewStyle = .plain, fetcher: Fetcher) {
        self.fetcher = fetcher

        let view = UITableView(frame: .zero, style: style)
        view.translatesAutoresizingMaskIntoConstraints = false
        self.tableView = view

        super.init(nibName: nil, bundle: nil)
    }

    public required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    open override func viewDidLoad() {
        super.viewDidLoad()

        self.view.addSubview(self.tableView)
        self.addConstraints()

        self.tableView.dataSource = self
        self.tableView.register(UITableViewCell.self, forCellReuseIdentifier: self.cellIdentifier)
    }

    func addConstraints() {
        let anchors = [self.tableView.topAnchor.constraint(equalTo: self.view.topAnchor), self.tableView.leftAnchor.constraint(equalTo: self.view.leftAnchor), self.tableView.rightAnchor.constraint(equalTo: self.view.rightAnchor), self.tableView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor)]
        for anchor in anchors {
            anchor.priority = UILayoutPriorityDefaultLow
            anchor.isActive = true
        }
    }
}

extension ItemsController: UITableViewDataSource {
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }

    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: self.cellIdentifier, for: indexPath)
        cell.textLabel?.text = "Hi there"

        return cell
    }
}
