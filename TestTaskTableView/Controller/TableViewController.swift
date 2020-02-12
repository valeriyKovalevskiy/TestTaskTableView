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
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 120
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let indexPath = tableView.indexPathForSelectedRow {
            guard let destinationVC = segue.destination as? FullTaskDescriptionViewController else {return}
            let selectedRow = indexPath.row
            
            destinationVC.titleLabelText = tasks[selectedRow].title
            destinationVC.descriptionText = tasks[selectedRow].description
        }
    }
}
