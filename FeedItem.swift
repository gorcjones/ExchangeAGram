//
//  FeedItem.swift
//  
//
//  Created by Ryan Jones on 6/3/15.
//
//

import Foundation
import CoreData

@objc (FeedItem)
class FeedItem: NSManagedObject {

    @NSManaged var caption: String
    @NSManaged var image: NSData

}
