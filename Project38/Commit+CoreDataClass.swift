//
//  Commit+CoreDataClass.swift
//  Project38
//
//  Created by Macbook on 19/08/2017.
//  Copyright © 2017 Chappy-App. All rights reserved.
//
//

import Foundation
import CoreData


public class Commit: NSManagedObject {
	
	override init(entity: NSEntityDescription, insertInto context: NSManagedObjectContext?) {
		super.init(entity: entity, insertInto: context)
		print("Init called")
	}

}
