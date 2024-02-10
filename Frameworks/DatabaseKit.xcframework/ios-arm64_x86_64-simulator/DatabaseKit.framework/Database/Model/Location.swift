//
//  Location.swift
//  DatabaseSDK
//
//  Created by Divya on 06/02/24.
//

import Foundation
import RealmSwift

public class Location: Object, ObjectKeyIdentifiable {
    @Persisted(primaryKey: true) public var _id: ObjectId
    @Persisted public var isSynced: Bool = false
    @Persisted public var activityTime: Double
    @Persisted public var activityType: String
    @Persisted public var altitude: Double
    @Persisted public var attribute: String
    @Persisted public var batteryPercentage: Int16
    @Persisted public var createdAt: Date
    @Persisted public var floor: Int16
    @Persisted public var horizontalAccuracy: Double
    @Persisted public var latitude: Double
    @Persisted public var longitude: Double
    @Persisted public var sourceInformation: String
    @Persisted public var speed: Int16
    @Persisted public var speedAccuracy: Int16
    @Persisted public var timestamp: Date
    @Persisted public var timeZone: String
    @Persisted public var tripId: String
    @Persisted public var userID: String
    @Persisted public var verticalAccuracy: Int16
}

