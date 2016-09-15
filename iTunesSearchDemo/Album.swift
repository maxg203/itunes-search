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
    var price:String!
    var artworkURL:String!
    
    init (title:String, artist:String, price:String, artworkURL:String) {
        super.init()
        
        self.title = title
        self.artist = artist
        self.price = price
        self.artworkURL = artworkURL
    }
}
