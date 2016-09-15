//
//  TableViewController.swift
//  iTunesSearchDemo
//
//  Created by Max Goodridge on 15/09/2016.
//  Copyright © 2016 Max Goodridge. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

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
            
            let view = Bundle.main.loadNibNamed("TableViewCell", owner: self, options: nil)
            
        })
        
        self.tableView.reloadData()
    }

    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 15
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "thisCell", for: indexPath)
        cell.textLabel?.text = "Cell Contents"
        return cell
    }
}
