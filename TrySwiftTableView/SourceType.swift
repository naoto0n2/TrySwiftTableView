//
//  SourceType.swift
//  TrySwiftTableView
//
//  Created by Naoto Onagi on 2016/03/02.
//  Copyright © 2016 Naoto Onagi. All rights reserved.
//

import UIKit

protocol SourceType: UITableViewDataSource {
    
    var dataObject: DataType { get set }
    var conditionForAdding: Bool { get }
    
    func insertTopRowIn(tableView: UITableView)
    func deleteRowAtIndexPath(indexPath: NSIndexPath, from tableView: UITableView)
}

extension SourceType {
    func addItemTo(tableView: UITableView) {
        if self.conditionForAdding {
            self.dataObject = self.dataObject.addNewItemAtIndex(0)
            self.insertTopRowIn(tableView)
        }
    }
    
    func insertTopRowIn(tableView: UITableView) {
        tableView.insertRowsAtIndexPaths([NSIndexPath(forRow: 0, inSection: 0)], withRowAnimation: .Fade)
    }
    
    func deleteRowAtIndexPath(indexPath: NSIndexPath, from tableView: UITableView) {
        tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
    }
}
