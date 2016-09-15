//
//  ItunesConnection.swift
//  iTunesSearchDemo
//
//  Created by Max Goodridge on 15/09/2016.
//  Copyright © 2016 Max Goodridge. All rights reserved.
//

import UIKit

class ItunesConnection: NSObject {

    class func getAlbumForString(searchString:String) {
        
        let url = NSURL(string: "https://itunes.apple.com/search?term=drake&media=music")
        
        let task = URLSession.shared.dataTask(with: url! as URL) { (data:Data?, response:URLResponse?, error:Error?) -> Void in
            
            if error == nil {
                do {
                    let itunesDict = try JSONSerialization.jsonObject(with: data!, options: .allowFragments)
                    print(itunesDict)
                } catch _ {
                    print(error)
                }
            }
        }
        
        task.resume()
    }
}
