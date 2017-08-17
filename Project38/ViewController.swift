//
//  ViewController.swift
//  Project38
//
//  Created by Macbook on 16/08/2017.
//  Copyright © 2017 Chappy-App. All rights reserved.
//

import UIKit
import CoreData

class ViewController: UITableViewController {
	
	var container: NSPersistentContainer!
	

	override func viewDidLoad() {
		super.viewDidLoad()
		
		container = NSPersistentContainer(name: "Project38")
		container.loadPersistentStores { storeDescription, error in
			if let error = error {
				print("Unresolved error \(error)")
				
			}
		}
	}
	
	func saveContext() {
		
		if container.viewContext.hasChanges {
			do {
				try container.viewContext.save()
				
			} catch {
				
				print("An error occurred while saving: \(error)")
				
			}
		}
	}
	
}

