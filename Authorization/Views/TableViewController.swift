//
//  TableViewController.swift
//  Authorization
//
//  Created by Алексей on 30.05.2021.
//

import UIKit


class TableViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    @IBOutlet weak var tableView: UITableView!
    
    var hobby = [Hobby(title: "", description: "", image: "")]

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return hobby.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as! TableViewCell
        cell.photo.image = UIImage(named: hobby[indexPath .row].image)
        cell.title.text = hobby[indexPath .row].title
        cell.textView.text = hobby[indexPath .row].description

        return cell
    }
    
    
}
