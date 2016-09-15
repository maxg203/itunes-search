//
//  ViewController.swift
//  iTunesSearchDemo
//
//  Created by Max Goodridge on 14/09/2016.
//  Copyright © 2016 Max Goodridge. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        ItunesConnection.getAlbumForString(searchString: "")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

