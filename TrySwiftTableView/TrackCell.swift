//
//  TrackCell.swift
//  TrySwiftTableView
//
//  Created by Naoto Onagi on 2016/03/02.
//  Copyright © 2016 Naoto Onagi. All rights reserved.
//

import UIKit

class TrackCell: UITableViewCell {
    func fillWith(track: Track) {
        self.textLabel?.text = track.name
        self.detailTextLabel?.text = track.artist
    }
}
