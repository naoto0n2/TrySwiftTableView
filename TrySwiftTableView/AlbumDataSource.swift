//
//  AlbumDataSource.swift
//  TrySwiftTableView
//
//  Created by Naoto Onagi on 2016/03/02.
//  Copyright © 2016 Naoto Onagi. All rights reserved.
//

import UIKit

class AlbumDataSource: DataSource {
    
    init() {
        super.init(dataObject: Album())
    }
    
    override var conditionForAdding: Bool {
        return self.dataObject.numberOfItems < 5
    }

    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        guard
            let cell = tableView.dequeueReusableCellWithIdentifier("TrackCell", forIndexPath: indexPath) as? TrackCell,
            let album = dataObject as? Album else {
                return UITableViewCell()
        }
        cell.fillWith(album[indexPath.row])
        return cell
    }
}
