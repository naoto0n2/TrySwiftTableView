//
//  DataSource.swift
//  TrySwiftTableView
//
//  Created by Naoto Onagi on 2016/03/02.
//  Copyright © 2016 Naoto Onagi. All rights reserved.
//

import UIKit

class DataSource: NSObject, UITableViewDataSource, SourceType {
    
    var dataObject: DataType = Album()
    
    func addItemTo(tableView: UITableView) {
        if self.dataObject.numberOfItems < 5 {
            self.dataObject = self.dataObject.addNewItemAtIndex(0)
            self.insertTopRowIn(tableView)
        }
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.dataObject.numberOfItems
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        guard
            let cell = tableView.dequeueReusableCellWithIdentifier("TrackCell", forIndexPath: indexPath) as? TrackCell,
            let album = dataObject as? Album else {
                return UITableViewCell()
        }
        cell.fillWith(album[indexPath.row])
        return cell
    }
    
    func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        return true
    }
    
    func tableView(tableView: UITableView, moveRowAtIndexPath sourceIndexPath: NSIndexPath, toIndexPath destinationIndexPath: NSIndexPath) {
        self.dataObject = self.dataObject.moveItem(sourceIndexPath.row, toIndex: destinationIndexPath.row)
    }
    
    func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        switch editingStyle {
        case .Delete:
            self.dataObject = self.dataObject.deleteItemAtIndex(indexPath.row)
            self.deleteRowAtIndexPath(indexPath, from: tableView)
        default: break
        }
    }
}
