//
//  TableViewController.swift
//  iTunesSearchDemo
//
//  Created by Max Goodridge on 15/09/2016.
//  Copyright © 2016 Max Goodridge. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    var cellData = [String]()

    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var searchTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print("VIEW DID LOAD")
        
        self.tableView.register(UITableViewCell.self, forCellReuseIdentifier: "thisCell")
        
        tableView.delegate = self
        tableView.dataSource = self
    }    

    @IBAction func searchForMusic(_ sender: AnyObject) {

        
        ItunesConnection.getAlbumForString(searchString: searchTextField.text!, completionHandler: { (album:Album) -> () in
            print(album.songs)
            
            self.cellData = album.songs
            DispatchQueue.main.async {
                self.tableView.reloadData()
            }
            
//            let view = Bundle.main.loadNibNamed("TableViewCell", owner: self, options: nil)
            
        })
        
    }

    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 15
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "thisCell", for: indexPath)
        if cellData.count > 0 {
            cell.textLabel?.text = cellData[indexPath.row]
            self.tableView.reloadData()
        } else {
            
            cell.textLabel?.text = cellData.description
        }
        return cell
    }
}
