//
//  TableViewController.swift
//  TestTaskTableView
//
//  Created by Valeriy Kovalevskiy on 2/12/20.
//  Copyright © 2020 v.kovalevskiy. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {
    //MARK: - Properties
    let numberOfTasks = 10
    var tasks = [Task]()
        
    //MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tasks = GetTasks.getTasks(numberOfTasks: numberOfTasks)
        let nib = UINib(nibName: "TableViewCell", bundle: nil)
        tableView.register(nib, forCellReuseIdentifier: "cell")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        navigationController?.setNavigationBarHidden(true, animated: animated)
    }

    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
        navigationController?.setNavigationBarHidden(false, animated: animated)
    }

    // MARK: - Methods
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tasks.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! TableViewCell
        cell.titleLabel.text = tasks[indexPath.row].title
        cell.descriptionLabel.text = tasks[indexPath.row].description
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let vc = storyboard?.instantiateViewController(identifier: "FullTaskDescriptionViewController") as? FullTaskDescriptionViewController
        let selectedRow = indexPath.row
        vc?.titleLabelText = tasks[selectedRow].title
        vc?.descriptionText = tasks[selectedRow].description
        self.navigationController?.pushViewController(vc!, animated: true)
    }
}
