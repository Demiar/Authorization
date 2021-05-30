//
//  WelcomeViewController.swift
//  Authorization
//
//  Created by Алексей on 25.05.2021.
//

import UIKit

class WelcomeViewController: UIViewController {
    @IBOutlet weak var loginLabel: UILabel!
    
    var loginValue = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loginLabel.text = "Welcome, \(loginValue)!!!"
    }
    @IBAction func logOutButton(_ sender: UIButton) {
        dismiss(animated: true) {
        }
    }

}
