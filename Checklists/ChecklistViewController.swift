//
//  ViewController.swift
//  Checklists
//
//  Created by Joshua Basche on 8/23/21.
//

import UIKit

class ChecklistViewController: UITableViewController {
  // MARK: - Variables
  var items = [ChecklistItem]()
  
  var row0item = ChecklistItem()
  var row1item = ChecklistItem()
  var row2item = ChecklistItem()
  var row3item = ChecklistItem()
  var row4item = ChecklistItem()
  
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    let item1 = ChecklistItem()
    item1.text = "Walk the dog"
    items.append(item1)
    
    let item2 = ChecklistItem()
    item2.text = "Brush my teeth"
    item2.checked = true
    items.append(item2)
    
    let item3 = ChecklistItem()
    item3.text = "Learn iOS development"
    item3.checked = true
    items.append(item3)
    
    let item4 = ChecklistItem()
    item4.text = "Soccer practice"
    items.append(item4)
    
    let item5 = ChecklistItem()
    item5.text = "Eat ice cream"
    items.append(item5)
  }
  
  func configureCheckmark(
    for cell: UITableViewCell,
    at indexPath: IndexPath
  ) {
    let item = items[indexPath.row]
    
    if item.checked {
      cell.accessoryType = .checkmark
    } else {
      cell.accessoryType = .none
    }
  }
  
  
  // MARK: - Table View Number Of Rows
  override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return 5
  }
  
  // MARK: - Table View Data Source
  override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCell(withIdentifier: "CheckListItem", for: indexPath)
    
    let item = items[indexPath.row]
    
    let label = cell.viewWithTag(1000) as! UILabel
    
    label.text = item.text
    
    configureCheckmark(for: cell, at: indexPath)
    
    
    return cell
  }
  
  override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    
    if let cell = tableView.cellForRow(at: indexPath) {
      
      let item = items[indexPath.row]
      item.checked.toggle()
      
      configureCheckmark(for: cell, at: indexPath)
      
    }
    
    tableView.deselectRow(at: indexPath, animated: true)
  }
  
  
}

