//
//  TableViewCell.swift
//  TestTaskTableView
//
//  Created by Valeriy Kovalevskiy on 2/12/20.
//  Copyright © 2020 v.kovalevskiy. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {
    //MARK: - Outlets
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    
    //MARK: - Lifecycle
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
}
