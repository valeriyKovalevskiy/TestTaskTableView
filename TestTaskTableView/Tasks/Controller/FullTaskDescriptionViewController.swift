//
//  FullTaskDescriptionViewController.swift
//  TestTaskTableView
//
//  Created by Valeriy Kovalevskiy on 2/12/20.
//  Copyright © 2020 v.kovalevskiy. All rights reserved.
//

import UIKit

class FullTaskDescriptionViewController: UIViewController {
    //MARK: - Properties
    var titleLabelText: String = ""
    var descriptionText: String = ""
    
    //MARK: - Outlets
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var descriptionTextView: UITextView!
    
    //MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        titleLabel.text = titleLabelText
        descriptionTextView.text = descriptionText
    }
}
