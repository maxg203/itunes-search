//
//  TableViewController.swift
//  iTunesSearchDemo
//
//  Created by Max Goodridge on 15/09/2016.
//  Copyright © 2016 Max Goodridge. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {

    @IBOutlet weak var searchTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 0
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 0
    }
    


    @IBAction func searchForMusic(_ sender: AnyObject) {
        
        ItunesConnection.getAlbumForString(searchString: "Drake", completionHandler: { (album:Album) -> () in
            print(album)
        })
        
        let cellNib = Bundle.main.loadNibNamed("MudicView", owner: self, options: nil) as! TableViewCell
        
        
    }
}
