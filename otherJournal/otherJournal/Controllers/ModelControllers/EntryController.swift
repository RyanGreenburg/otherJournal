//
//  EntryController.swift
//  otherJournal
//
//  Created by Darin Armstrong on 10/23/19.
//  Copyright © 2019 RYAN GREENBURG. All rights reserved.
//

import Foundation

class EntryController {
    
    static let shared = EntryController()
    
    var entries: [Entry] = []
    
    func create(body: String) {
        let newEntry = Entry(body: body)
        self.entries.append(newEntry)
    }
    
    func delete(entry: Entry) {
        guard let index = entries.firstIndex(of: entry) else { return }
        entries.remove(at: index)
    }
    
    func update(entry: Entry, newBody: String) {
        entry.body = newBody
    }
}
