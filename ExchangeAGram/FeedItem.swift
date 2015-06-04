//
//  FeedItem.swift
//  ExchangeAGram
//
//  Created by Ryan Jones on 6/3/15.
//  Copyright (c) 2015 Ryan Jones. All rights reserved.
//

import Foundation
import CoreData

@objc (FeedItem)
class FeedItem: NSManagedObject {

    @NSManaged var caption: String
    @NSManaged var image: NSData

}
