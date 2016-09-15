//
//  ItunesConnection.swift
//  iTunesSearchDemo
//
//  Created by Max Goodridge on 15/09/2016.
//  Copyright © 2016 Max Goodridge. All rights reserved.
//

import UIKit

class ItunesConnection: NSObject {

    class func getAlbumForString(searchString:String, completionHandler:@escaping (Album) -> ()) {
        
        let escapedString = searchString.addingPercentEncoding(withAllowedCharacters: CharacterSet.urlHostAllowed)
        
        let url = NSURL(string: "https://itunes.apple.com/search?term=\(escapedString!)&media=music")
        
        let task = URLSession.shared.dataTask(with: url! as URL) { (data:Data?, response:URLResponse?, error:Error?) -> Void in
            
            do {
                let jsonResponse = try JSONSerialization.jsonObject(with: data!, options: .allowFragments) as! NSDictionary
                
                
                let resultsArray = jsonResponse.object(forKey: "results") as! [Dictionary<String, AnyObject>]
                
                if resultsArray.count > 0 {
                    var songsArray = [String]()
                    
                    if let resultsDict = resultsArray.first {
                        let songName = resultsDict["trackName"] as! String
                        
                        let artist = resultsDict["artistName"] as! String
                        let artworkURL = resultsDict["artworkUrl100"] as! String
                        let albumTitle = resultsDict["collectionName"] as! String
                        let genre = resultsDict["primaryGenreName"] as! String
                        
                        let album = Album(title: albumTitle, artist: artist, genre: genre, artworkURL: artworkURL, songs:[songName, artist])
                        
                        completionHandler(album)
                    }
                }
              
            } catch _ {
                print(error)
            }
        }
        
        task.resume()
    }
}
