//
//  PhotosViewController.swift
//  Authorization
//
//  Created by Алексей on 30.05.2021.
//

import UIKit

class PhotosViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    @IBOutlet var tableView: UITableView!
    
    var photo = ""
    let cellReuseIdentifier = "image"

    override func viewDidLoad() {
        super.viewDidLoad()
        //self.tableView.register(UITableCell.self, forCellReuseIdentifier: cellReuseIdentifier)
        self.tableView.tableFooterView = UIView()
        tableView.delegate = self
        tableView.dataSource = self
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as! UITableCell
        cell.photo.image = UIImage(named: self.photo)
        return cell
    }
}
