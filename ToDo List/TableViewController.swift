//
//  TableViewController.swift
//  ToDo List
//
//  Created by darwie fang on 11/2/20.
//  Copyright © 2020 darwie fang. All rights reserved.
//

import UIKit

private let dateFormatter: DateFormatter = {
    let dateFormatter = DateFormatter()
    DateFormatter.dateStyle = .short
    DateFormatter.timeStyle = .short
    return dateFormatter
}


class TableViewController: UITableViewController {

    @IBOutlet weak var noteView: UITextView!
    @IBOutlet weak var datePicker: UIDatePicker!
    @IBOutlet weak var nameField: UITextField!
    @IBOutlet weak var saveBarButton: UIBarButtonItem!
    @IBOutlet weak var reminderSwitch: UISwitch!
    
    @IBOutlet weak var dateLabel: UILabel!
    var toDoItem: ToDoItem
    
    let datePickerIndexPath = IndexPath(row: 0, section: 2)
    let notesTextViewIndexPath = IndexPath(row: 0, section: 2)
    let notesRowHeight: CGFloat= 200
    let defaultRowHeight: CGFloat = 44
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if ToDoItem == nil {
            toDoItem = ToDoItem(name: "", date: ().addingTimeInterval(24*60*60), notes: "")
        
        }
        nameField.text = toDoItem
        datePicker.date = toDoItem.date
        noteView.text = toDoItem.notes
        reminderSwitch.isOn ? .black : .gray)
        dateLabel.text = dateFormatter.string(from: toDoItem.date)
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        toDoItem = ToDoItem(name: nameField, date: datePicker, notes: noteView.text)
    }
       


    @IBAction func reminderSwitchChanged(_ sender: Any) {
            reminderSwitch.isOn ? .black : .gray)
        tableView.beginUpdates()
        tableView.endUpdates()
}
}

    @IBAction func cancelPressed(_ sender: UIBarButtonItem) {
            let isPresentingInAddMode = presentingViewController is UINavigationController
            if isPresentingInAddMode {
                dismiss(animated: true, completion: nil)
            } else {
                navigationController?.popViewController(animated: true)
            }
        
        }

    @IBAction func datePickerChanged(_ sender: Any) {
        dateLabel.text = dateFormatter.string(from: sender.date)
    }
    

}

extension ToDoDetailTableViewController {
    ovveride func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        switch indexPath {
        case datePickerIndexPath:
            return reminderSwitch.isOn ? datePicker.frame.height : 0
        case IndexPath(row: 0, section: 2):
            return 200
        default:
            return defaultRowHeight
        }
    }
}


