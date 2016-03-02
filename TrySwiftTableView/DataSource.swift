//
//  DataSource.swift
//  TrySwiftTableView
//
//  Created by Naoto Onagi on 2016/03/02.
//  Copyright © 2016 Naoto Onagi. All rights reserved.
//

import UIKit

class DataSource: NSObject, UITableViewDataSource, SourceType {
    
    private var album = Album()
    
    func addItemTo(tableView: UITableView) {
        if self.album.numberOfTracks < 5 {
            self.album = self.album.addNewTrackAtIndex(0)
            self.insertTopRowIn(tableView)
        }
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.album.numberOfTracks
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCellWithIdentifier("TrackCell", forIndexPath: indexPath) as? TrackCell else {
            return UITableViewCell()
        }
        let track = self.album.trackAtPosition(indexPath.row)
        cell.fillWith(track)
        return cell
    }
    
    func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        return true
    }
    
    func tableView(tableView: UITableView, moveRowAtIndexPath sourceIndexPath: NSIndexPath, toIndexPath destinationIndexPath: NSIndexPath) {
        self.album = self.album.moveTrack(sourceIndexPath.row, toIndex: destinationIndexPath.row)
    }
    
    func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        switch editingStyle {
        case .Delete:
            self.album = self.album.deleteTrackAtIndex(indexPath.row)
            self.deleteRowAtIndexPath(indexPath, from: tableView)
        default: break
        }
    }
}
