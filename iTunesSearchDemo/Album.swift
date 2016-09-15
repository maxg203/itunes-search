//
//  Album.swift
//  iTunesSearchDemo
//
//  Created by Max Goodridge on 15/09/2016.
//  Copyright © 2016 Max Goodridge. All rights reserved.
//

import UIKit

class Album: NSObject {
    
    var title:String!
    var artist:String!
    var genre:String!
    var artworkURL:String!
    var songs = [String]()
    
    init (title:String, artist:String, genre:String, artworkURL:String, songs:[String]) {
        super.init()
        
        self.title = title
        self.artist = artist
        self.genre = genre
        self.artworkURL = artworkURL
        self.songs = songs
    }
}
