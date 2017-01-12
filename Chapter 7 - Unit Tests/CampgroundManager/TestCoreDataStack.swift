//
//  TestCoreDataStack.swift
//  CampgroundManager
//
//  Created by Xavi Moll on 12/01/2017.
//  Copyright © 2017 Razeware. All rights reserved.
//

import CampgroundManager
import Foundation
import CoreData

class TestCoreDataStack: CoreDataStack {
  
  convenience init() {
    self.init(modelName: "CampgroundManager")
  }
  
  override init(modelName: String) {
    super.init(modelName: modelName)
    
    let persistentStoreDescription = NSPersistentStoreDescription()
    persistentStoreDescription.type = NSInMemoryStoreType
    
    let container = NSPersistentContainer(name: modelName)
    container.persistentStoreDescriptions = [persistentStoreDescription]
    
    container.loadPersistentStores { (storeDescription, error) in
      if let error = error as? NSError {
        fatalError("Unresolved error \(error), \(error.userInfo)")
      }
    }
    self.storeContainer = container
  }
}
