//
//  ViewController.swift
//  otherJournal
//
//  Created by RYAN GREENBURG on 10/23/19.
//  Copyright © 2019 RYAN GREENBURG. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        EntryController.shared.entries.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "entryCell", for: indexPath)
        
        let entry = EntryController.shared.entries[indexPath.row]
        
        cell.textLabel?.text = entry.body
        cell.detailTextLabel?.text = "\(entry.timestamp)"
        
        return cell
    }
    

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        <#code#>
    }
    


}

