//
//  Album.swift
//  TrySwiftTableView
//
//  Created by Naoto Onagi on 2016/03/02.
//  Copyright © 2016 Naoto Onagi. All rights reserved.
//

import Foundation

struct Album {
    private var tracks: [Track] = []
    
    var numberOfTracks: Int {
        return self.tracks.count
    }
    
    func trackAtPosition(index: Int) -> Track {
        return self.tracks[index]
    }
    
    func addNewTrackAtIndex(index: Int) -> Album {
        var mutableTracks = self.tracks
        mutableTracks.insert(Track(), atIndex: index)
        return Album(tracks: mutableTracks)
    }
    
    func deleteTrackAtIndex(index: Int) -> Album {
        var mutableTracks = self.tracks
        mutableTracks.removeAtIndex(index)
        return Album(tracks: mutableTracks)
    }
    
    func moveTrack(fromIndex: Int, toIndex: Int) -> Album {
        return self.deleteTrackAtIndex(fromIndex).insertTrack(self.tracks[fromIndex], atIndex: toIndex)
    }
    
    private func insertTrack(track: Track, atIndex index: Int) -> Album {
        var mutableTracks = self.tracks
        mutableTracks.insert(track, atIndex: index)
        return Album(tracks: mutableTracks)
    }
}
