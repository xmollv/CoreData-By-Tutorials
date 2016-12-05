//
//  ViewController.swift
//  HitList
//
//  Created by Xavi Moll on 05/12/2016.
//  Copyright © 2016 Xavi Moll. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var tableView: UITableView!
    var names: [String] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        
        title = "The List"
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "Cell")
    }

    @IBAction func addName(_ sender: UIBarButtonItem) {
        
        let alert = UIAlertController(title: "New Name", message: "Add a new name", preferredStyle: .alert)
        
        let saveAction = UIAlertAction(title: "Save", style: .default) { [unowned self] action in
            guard let textField = alert.textFields?.first, let nameToSave = textField.text else { return }
            self.names.append(nameToSave)
            self.tableView.reloadData()
        }
        
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
        
        alert.addTextField(configurationHandler: nil)
        alert.addAction(saveAction)
        alert.addAction(cancelAction)
        
        present(alert, animated: true)
    }
}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return names.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        cell.textLabel?.text = names[indexPath.row]
        return cell
    }
}

