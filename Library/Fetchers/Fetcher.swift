import Foundation
import DATAStack
import Networking
import Sync
import DATASource
import CoreData

open class Fetcher {
    fileprivate var data: DATAStack
    fileprivate var networking: Networking

    init(baseURL: String, modelName: String) {
        self.data = DATAStack(modelName: modelName)
        self.networking = Networking(baseURL: baseURL)
    }

    open func someResource(_ completion: @escaping (_ error: NSError?) -> ()) {
        self.networking.GET("/someResource") { JSON, error in
            if let JSON = JSON as? [[String : AnyObject]] {
                Sync.changes(JSON, inEntityNamed: "SomeEntityName", dataStack: self.data, completion: { error in
                    completion(error)
                })
            } else {
                completion(error)
            }
        }
    }
}
