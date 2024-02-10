//
//  Database.swift
//  DatabaseSDK
//
//  Created by Divya on 06/02/24.
//

import Foundation
import RealmSwift

public class DatabaseManager {

    public static let shared = DatabaseManager()

    private let realm: Realm

    private init() {
        // Initialize Realm
        do {
            realm = try Realm()
        } catch {
            fatalError("Error initializing Realm: \(error.localizedDescription)")
        }
    }

    // MARK: - CRUD Operations

    // Add an object to the database
    public func addObject<T: Object>(_ object: T) {
        do {
            try realm.write {
                realm.add(object)
            }
        } catch {
            print("Error adding object to Realm: \(error.localizedDescription)")
        }
    }

    // Retrieve an object by ID
    public func getObjectByID<T: Object>(_ objectType: T.Type, id: String) -> T? {
        return realm.object(ofType: objectType, forPrimaryKey: id)
    }

    
    // Retrieve all objects of a given type
    public func getAllObjects<T: Object>(_ objectType: T.Type) -> Results<T>? {
        return realm.objects(objectType)
    }
    
    
    public func removeAllObjects<T: Object>(_ objectType: T.Type) {
        do {
            try realm.write {
                let objects = realm.objects(objectType)
                realm.delete(objects)
            }
        } catch {
            print("Error removing objects from Realm: \(error.localizedDescription)")
        }
    }
    
    // Delete all objects of a given type
    public func deleteAllObjects<T: Object>(_ objectType: T.Type) {
        let objects = realm.objects(objectType)
        do {
            try realm.write {
                realm.delete(objects)
            }
        } catch {
            print("Error deleting all objects from Realm: \(error.localizedDescription)")
        }
    }

    // Delete objects that match a given condition
    public func deleteObjects<T: Object>(_ objectType: T.Type, where predicate: NSPredicate) {
        let objects = realm.objects(objectType).filter(predicate)
        do {
            try realm.write {
                realm.delete(objects)
            }
        } catch {
            print("Error deleting objects from Realm: \(error.localizedDescription)")
        }
    }
    // Delete an object by ID
    public func deleteObjectByID<T: Object>(_ objectType: T.Type, id: String) {
        if let object = getObjectByID(objectType, id: id) {
            do {
                try realm.write {
                    realm.delete(object)
                }
            } catch {
                print("Error deleting object from Realm: \(error.localizedDescription)")
            }
        }
    }

}
