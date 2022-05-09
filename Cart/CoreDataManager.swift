//
//  CoreDataManager.swift
//  Cart
//
//  Created by Вячеслав Квашнин on 11.03.2021.
//

import Foundation
import CoreData

class CoreDataManager {
    
    let persistentContainer: NSPersistentContainer
    
    init() {
        
        persistentContainer = NSPersistentContainer(name: "DBModel")
        persistentContainer.loadPersistentStores {(description, error) in
            if let error = error {
                fatalError("Core Data stor \(error.localizedDescription)")
            }
        }
    }
    
    func updateMov() {
        
        do {
            try persistentContainer.viewContext.save()
        } catch {
            persistentContainer.viewContext.rollback()
            
        }
    }
    
    func deleteMov(mov: Mov) {
        
        persistentContainer.viewContext.delete(mov)
        
        do {
            try persistentContainer.viewContext.save()
        } catch {
            persistentContainer.viewContext.rollback()
            print("Failed to save context \(error)")
        }
    }
    
    func getAllMov() -> [Mov] {
        
        let fetchRequest: NSFetchRequest<Mov> = Mov.fetchRequest()
        
        do {
            return try persistentContainer.viewContext.fetch(fetchRequest)
        } catch {
            return []
        }
    }
    
    func saveMov(title: String) {
        
        let mov = Mov(context: persistentContainer.viewContext)
        
        mov.title = title
        
        do {
            try persistentContainer.viewContext.save()
        }
        catch {
            print("Field to movie \(error)")
        }
    }
}
