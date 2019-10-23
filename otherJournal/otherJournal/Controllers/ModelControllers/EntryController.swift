//
//  EntryController.swift
//  otherJournal
//
//  Created by Darin Armstrong on 10/23/19.
//  Copyright © 2019 RYAN GREENBURG. All rights reserved.
//

import Foundation

class EntryController {
    
    
    static let sharedInstance = EntryController()
    
    var entries: [Entry] = []
    
    func create(body: String) {
        let entry = Entry(body: body)
        self.entries.append(entry)
        
    }
    
    func delete(entry: Entry) {
        self.entries.removeAll()
    }
    
    func update(entry: Entry, newBody: String) {
        
    }
}
