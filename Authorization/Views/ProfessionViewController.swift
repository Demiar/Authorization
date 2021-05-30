//
//  ProfessionViewController.swift
//  Authorization
//
//  Created by Алексей on 30.05.2021.
//

import UIKit

class ProfessionViewController: UIViewController {
    @IBOutlet weak var professionTextView: UITextView!
    
    var profession = [Profession(title: "", description: "", image: "")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        professionTextView.text = """
            \(profession[0].title)
            \(profession[0].description)
        """
    }
}
