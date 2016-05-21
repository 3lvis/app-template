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