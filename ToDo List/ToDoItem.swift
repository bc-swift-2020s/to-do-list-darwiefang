//
//  ToDoItem.swift
//  ToDo List
//
//  Created by darwie fang on 8/3/20.
//  Copyright © 2020 darwie fang. All rights reserved.
//

import Foundation

struct ToDoItem: Codable {
      var name: String
      var date: Date
      var notes: String
    var reminderSet: Bool
    var notificationID: String?
  }
