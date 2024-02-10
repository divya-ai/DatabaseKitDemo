//
//  Trip.swift
//  DatabaseSDK
//
//  Created by Divya on 06/02/24.
//

import Foundation
import RealmSwift

public class Trip: Object, ObjectKeyIdentifiable {
    @Persisted(primaryKey: true) public var _id: ObjectId
    @Persisted public var isSynced: Bool = false
    @Persisted public var userID: String = ""
    @Persisted public var name: String = ""
    @Persisted public var createdAt: Date = Date()
}

