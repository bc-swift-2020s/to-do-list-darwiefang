//
//  TableViewController.swift
//  ToDo List
//
//  Created by darwie fang on 11/2/20.
//  Copyright © 2020 darwie fang. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {

    @IBOutlet weak var noteView: UITextView!
    @IBOutlet weak var datePicker: UIDatePicker!
    @IBOutlet weak var nameField: UITextField!
    @IBOutlet weak var saveBarButton: UIBarButtonItem!
    override func viewDidLoad() {
        super.viewDidLoad()

       


    }

    @IBAction func cancelButtonPressed(_ sender: UIBarButtonItem) {
        let isPresentingInAddMode = presentingViewController is UINavigationController
        if isPresentingInAddMode {
            dismiss(animated: true, completion: nil)
        } else {
            navigationController?.popViewController(animated: true)
        }
    }
}
