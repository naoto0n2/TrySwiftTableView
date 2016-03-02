//
//  Album.swift
//  TrySwiftTableView
//
//  Created by Naoto Onagi on 2016/03/02.
//  Copyright © 2016 Naoto Onagi. All rights reserved.
//

import Foundation

struct Album: DataType {
    private var tracks: [Track] = []
    
    var numberOfItems: Int {
        return self.tracks.count
    }
    
    subscript(index: Int) -> Track {
        return self.tracks[index]
    }
    
    func addNewItemAtIndex(index: Int) -> Album {
        var mutableItems = self.tracks
        mutableItems.insert(Track(), atIndex: index)
        return Album(tracks: mutableItems)
    }
    
    func deleteItemAtIndex(index: Int) -> Album {
        var mutableItems = self.tracks
        mutableItems.removeAtIndex(index)
        return Album(tracks: mutableItems)
    }
    
    func moveItem(fromIndex: Int, toIndex: Int) -> Album {
        return self.deleteItemAtIndex(fromIndex).insertItem(self.tracks[fromIndex], atIndex: toIndex)
    }
    
    private func insertItem(track: Track, atIndex index: Int) -> Album {
        var mutableItems = self.tracks
        mutableItems.insert(track, atIndex: index)
        return Album(tracks: mutableItems)
    }
}
