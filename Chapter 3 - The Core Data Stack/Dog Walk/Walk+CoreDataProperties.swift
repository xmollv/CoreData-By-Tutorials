//
//  Walk+CoreDataProperties.swift
//  Dog Walk
//
//  Created by Xavi Moll on 06/12/2016.
//  Copyright © 2016 Razeware. All rights reserved.
//

import Foundation
import CoreData


extension Walk {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Walk> {
        return NSFetchRequest<Walk>(entityName: "Walk");
    }

    @NSManaged public var date: NSDate?
    @NSManaged public var dog: Dog?

}
