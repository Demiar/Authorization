//
//  HobbyViewController.swift
//  Authorization
//
//  Created by Алексей on 30.05.2021.
//

import UIKit

class HobbyViewController: UIViewController {

    @IBOutlet weak var imageOneView: UIImageView!
    @IBOutlet weak var imageTwoView: UIImageView!
    @IBOutlet weak var titleOneLabel: UILabel!
    @IBOutlet weak var titleTwoLabel: UILabel!
    @IBOutlet weak var textOneView: UITextView!
    @IBOutlet weak var textTwoView: UITextView!
    
    var hobby = [Hobby(title: "", description: "", image: "")]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        imageOneView.image = UIImage(named: hobby[0].image)
        titleOneLabel.text = hobby[0].title
        textOneView.text = hobby[0].description
        
        imageTwoView.image = UIImage(named: hobby[1].image)
        titleTwoLabel.text = hobby[1].title
        textTwoView.text = hobby[1].description
    }
}
