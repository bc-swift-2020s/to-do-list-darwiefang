//
//  ListTableViewCell.swift
//  ToDo List
//
//  Created by darwie fang on 9/3/20.
//  Copyright © 2020 darwie fang. All rights reserved.
//

import UIKit
protocol ListTableViewCellDelegate: class {
    func checkBoxToggle(sender: ListTableViewCell)
}
class ListTableViewCell: UITableViewCell {
    weak var delegate: ListTableViewCellDelegate?
    
    var toDoItem: toDoItem! {
        didSet {
            nameLabel.text = toDoItem.name
            checkBoxButton.isSelected = toDoItem.completed
        }
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
()
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
