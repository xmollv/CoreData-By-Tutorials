/**
 * Copyright (c) 2016 Razeware LLC
 *
 * Permission is hereby granted, free of charge, to any person obtaining a copy
 * of this software and associated documentation files (the "Software"), to deal
 * in the Software without restriction, including without limitation the rights
 * to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 * copies of the Software, and to permit persons to whom the Software is
 * furnished to do so, subject to the following conditions:
 *
 * The above copyright notice and this permission notice shall be included in
 * all copies or substantial portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 * OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
 * THE SOFTWARE.
 */

import Foundation
import CoreData

public final class CampSiteService {

  // MARK: Properties
  let managedObjectContext: NSManagedObjectContext
  let coreDataStack: CoreDataStack

  // MARK: Initializers
  public init(managedObjectContext: NSManagedObjectContext, coreDataStack: CoreDataStack) {
    self.managedObjectContext = managedObjectContext
    self.coreDataStack = coreDataStack
  }
}

// MARK: Public
extension CampSiteService {

  public func addCampSite(_ siteNumber: NSNumber, electricity: Bool, water: Bool) -> CampSite {
    let campSite = CampSite(context: managedObjectContext)
    campSite.siteNumber = siteNumber
    campSite.electricity = NSNumber(value: electricity)
    campSite.water = NSNumber(value: water)
    
    coreDataStack.saveContext(managedObjectContext)
    
    return campSite
  }
  
  public func deleteCampSite(_ siteNumber: NSNumber) {
    // TODO : Not yet implemented
  }
  
  public func getCampSite(_ siteNumber: NSNumber) -> CampSite? {
    let fetchRequest: NSFetchRequest<CampSite> = CampSite.fetchRequest()
    fetchRequest.predicate = NSPredicate(format: "siteNumber == %@", argumentArray: [siteNumber])
    
    let results: [CampSite]?
    do {
      results = try managedObjectContext.fetch(fetchRequest)
    } catch {
      return nil
    }
    
    return results?.first
  }
  
  public func getCampSites() -> [CampSite] {
    // TODO : Not yet implemented
    
    return []
  }
  
  public func getNextCampSiteNumber() -> NSNumber {
    // TODO : Not yet implemented
    
    return -1
  }
}
