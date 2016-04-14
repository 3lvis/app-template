import Foundation
import DATAStack
import Networking
import Sync
import DATASource
import CoreData

public class Fetcher {
    private var data: DATAStack
    private var networking: Networking

    init(baseURL: String, modelName: String) {
        self.data = DATAStack(modelName: modelName)
        self.networking = Networking(baseURL: baseURL)
    }

    public func persistWithCompletion(completion: () -> ()) {
        data.persistWithCompletion(completion)
    }

    public func someResource(completion: (error: NSError?) -> ()) {
        self.networking.GET("/someResource") { JSON, error in
            if let JSON = JSON as? [[String : AnyObject]] {
                Sync.changes(JSON, inEntityNamed: "SomeEntityName", dataStack: self.data, completion: { error in
                    completion(error: error)
                })
            } else {
                completion(error: error)
            }
        }
    }
}

extension Fetcher {
    public func dataSource(tableView: UITableView, cellIdentifier: String, fetchRequest: NSFetchRequest, sectionName: String? = nil, configuration: (cell: UITableViewCell, item: NSManagedObject, indexPath: NSIndexPath) -> ()) -> DATASource {
        return DATASource(tableView: tableView, cellIdentifier: cellIdentifier, fetchRequest: fetchRequest, mainContext: self.data.mainContext, sectionName: sectionName, configuration: configuration)
    }

    public func dataSource(collectionView: UICollectionView, cellIdentifier: String, fetchRequest: NSFetchRequest, mainContext: NSManagedObjectContext, sectionName: String? = nil, configuration: (cell: UICollectionViewCell, item: NSManagedObject, indexPath: NSIndexPath) -> ()) -> DATASource {
        return DATASource(collectionView: collectionView, cellIdentifier: cellIdentifier, fetchRequest: fetchRequest, mainContext: self.data.mainContext, sectionName: sectionName, configuration: configuration)
    }
}
