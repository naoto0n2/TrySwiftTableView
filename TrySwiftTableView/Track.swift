//
//  Track.swift
//  TrySwiftTableView
//
//  Created by Naoto Onagi on 2016/03/02.
//  Copyright © 2016 Naoto Onagi. All rights reserved.
//

import Foundation

struct Track {
    var name: String
    var artist: String
    
    init() {
        let rand = arc4random() % 100
        self.name = "Track\(rand)"
        self.artist = "Artist\(rand)"
    }
}
