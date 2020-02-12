//
//  GetTasks.swift
//  TestTaskTableView
//
//  Created by Valeriy Kovalevskiy on 2/12/20.
//  Copyright © 2020 v.kovalevskiy. All rights reserved.
//

import Foundation

struct GetTasks {
    
    private init() {}
    
    
    static func getTasks(numberOfTasks: Int) -> [Task] {

        var tasks = [Task]()
        
        for number in 1...numberOfTasks {
            tasks.append(Task(title: "task number #\(number)", description: "task #\(number) description"))
        }
        return tasks
    }
    
}
