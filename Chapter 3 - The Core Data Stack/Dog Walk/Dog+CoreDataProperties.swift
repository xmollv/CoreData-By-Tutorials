//
//  Dog+CoreDataProperties.swift
//  Dog Walk
//
//  Created by Xavi Moll on 06/12/2016.
//  Copyright © 2016 Razeware. All rights reserved.
//

import Foundation
import CoreData


extension Dog {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Dog> {
        return NSFetchRequest<Dog>(entityName: "Dog");
    }

    @NSManaged public var name: String?
    @NSManaged public var walks: NSOrderedSet?

}

// MARK: Generated accessors for walks
extension Dog {

    @objc(insertObject:inWalksAtIndex:)
    @NSManaged public func insertIntoWalks(_ value: Walk, at idx: Int)

    @objc(removeObjectFromWalksAtIndex:)
    @NSManaged public func removeFromWalks(at idx: Int)

    @objc(insertWalks:atIndexes:)
    @NSManaged public func insertIntoWalks(_ values: [Walk], at indexes: NSIndexSet)

    @objc(removeWalksAtIndexes:)
    @NSManaged public func removeFromWalks(at indexes: NSIndexSet)

    @objc(replaceObjectInWalksAtIndex:withObject:)
    @NSManaged public func replaceWalks(at idx: Int, with value: Walk)

    @objc(replaceWalksAtIndexes:withWalks:)
    @NSManaged public func replaceWalks(at indexes: NSIndexSet, with values: [Walk])

    @objc(addWalksObject:)
    @NSManaged public func addToWalks(_ value: Walk)

    @objc(removeWalksObject:)
    @NSManaged public func removeFromWalks(_ value: Walk)

    @objc(addWalks:)
    @NSManaged public func addToWalks(_ values: NSOrderedSet)

    @objc(removeWalks:)
    @NSManaged public func removeFromWalks(_ values: NSOrderedSet)

}
