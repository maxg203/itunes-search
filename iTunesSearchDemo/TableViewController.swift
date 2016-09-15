//
//  TableViewController.swift
//  iTunesSearchDemo
//
//  Created by Max Goodridge on 15/09/2016.
//  Copyright © 2016 Max Goodridge. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var searchTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    


    @IBAction func searchForMusic(_ sender: AnyObject) {
        
        ItunesConnection.getAlbumForString(searchString: "Drake", completionHandler: { (album:Album) -> () in
            print(album)
        })
        
        let cellNib = Bundle.main.loadNibNamed("MudicView", owner: self, options: nil) as! TableViewCell
        
        
    }
}
