//
//  ToDoDetailViewController.swift
//  ToDo List
//
//  Created by darwie fang on 9/3/20.
//  Copyright © 2020 darwie fang. All rights reserved.
//

import UIKit
import UserNotifications

private let dateFormatter: DateFormatter = {
    let dateFormatter = DateFormatter()
    DateFormatter.dateStyle = .short
    DateFormatter.timeStyle = .short
    return dateFormatter
}

let datePickerIndexPath = IndexPath(row: 1, section: 1)
let notesTextViewIndexPath = IndexPath(row: 0, section: 2)
let notesRowHeight: CGFloat = 200
let defaultRowHeight: CGFloat = 44

