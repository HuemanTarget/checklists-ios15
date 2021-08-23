//
//  ViewController.swift
//  Checklists
//
//  Created by Joshua Basche on 8/23/21.
//

import UIKit

class ChecklistViewController: UITableViewController {
  // MARK: - Variables
  let row0text = "Walk the dog"
  let row1text = "Brush teeth"
  let row2text = "Learn iOS development"
  let row3text = "Soccer practice"
  let row4text = "Eat ice cream"
  
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view.
  }
  
  
  // MARK: - Table View Number Of Rows
  override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return 5
  }
  
  // MARK: - Table View Data Source
  override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCell(withIdentifier: "CheckListItem", for: indexPath)
    
    let label = cell.viewWithTag(1000) as! UILabel
    
    if indexPath.row == 0 {
      label.text = "Walk the dog"
    } else if indexPath.row == 1 {
      label.text = "Brush my teeth"
    } else if indexPath.row == 2 {
      label.text = "Learn iOS development"
    } else if indexPath.row == 3 {
      label.text = "Soccer practice"
    } else if indexPath.row == 4 {
      label.text = "Eat ice cream"
    }
    
    return cell
  }
  
  override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    
    if let cell = tableView.cellForRow(at: indexPath) {
      if cell.accessoryType == .none {
        cell.accessoryType = .checkmark
      } else {
        cell.accessoryType = .none
      }
    }
    
    tableView.deselectRow(at: indexPath, animated: true)
  }
  
  
}

