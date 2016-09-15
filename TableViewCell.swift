//
//  TableViewCell.swift
//  iTunesSearchDemo
//
//  Created by Max Goodridge on 15/09/2016.
//  Copyright © 2016 Max Goodridge. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var mainImageView: UIImageView!
    @IBOutlet weak var title: UILabel!
    @IBOutlet weak var artist: UILabel!
    @IBOutlet weak var genre: UILabel!
    
    func addDataToMusicView(album:Album) {
        
        do {
            mainImageView.image = try UIImage(data: Data(contentsOf: URL(string: album.artworkURL)!))
        }
        catch _ {
            print("Error")
        }
        title.text = album.title
        artist.text = album.artist
        genre.text = album.genre
    }
    
}
