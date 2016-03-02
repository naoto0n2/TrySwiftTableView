//
//  ViewController.swift
//  TrySwiftTableView
//
//  Created by Naoto Onagi on 2016/03/02.
//  Copyright © 2016 Naoto Onagi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    private var dataSource = DataSource()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.dataSource = self.dataSource
        self.navigationItem.leftBarButtonItem = self.editButtonItem()
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: UIBarButtonSystemItem.Add, target: self, action: "addNewTrack:")
    }
    
    // MARK: - Private methods

    dynamic private func addNewTrack(sender: UIBarButtonItem) {
        self.dataSource.addItemTo(self.tableView)
    }

    // MARK: - UIViewController override
    
    override func setEditing(editing: Bool, animated: Bool) {
        super.setEditing(editing, animated: animated)
        
        self.tableView.setEditing(editing, animated: true)
    }
}
