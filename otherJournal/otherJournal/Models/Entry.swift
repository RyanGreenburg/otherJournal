//
//  Entry.swift
//  otherJournal
//
//  Created by RYAN GREENBURG on 10/23/19.
//  Copyright © 2019 RYAN GREENBURG. All rights reserved.
//

import Foundation

class Entry {
    
    var body: String
    var timestamp: Date
    
    init(body: String, timestamp: Date = Date()) {
        self.body = body
        self.timestamp = timestamp
    }
}

extension Entry: Equatable {
    static func == (lhs: Entry, rhs: Entry) -> Bool {
        return lhs === rhs
    }
}
