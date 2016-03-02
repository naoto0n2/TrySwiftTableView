//
//  Album.swift
//  TrySwiftTableView
//
//  Created by Naoto Onagi on 2016/03/02.
//  Copyright © 2016 Naoto Onagi. All rights reserved.
//

import Foundation

class Album {
    private var tracks: [Track] = []
    
    var numberOfTracks: Int {
        return self.tracks.count
    }
    
    func trackAtPosition(index: Int) -> Track {
        return self.tracks[index]
    }
    
    func addNewTrackAtIndex(index: Int) {
        self.tracks.insert(Track(), atIndex: index)
    }
    
    func insertTrack(track: Track, atIndex index: Int) {
        self.tracks.insert(track, atIndex: index)
    }
    
    func deleteTrackAtIndex(index: Int) {
        self.tracks.removeAtIndex(index)
    }
    
    func moveTrack(fromIndex: Int, toIndex: Int) {
        let trackToMove = self.tracks[fromIndex]
        self.deleteTrackAtIndex(fromIndex)
        self.insertTrack(trackToMove, atIndex: toIndex)
    }
}
