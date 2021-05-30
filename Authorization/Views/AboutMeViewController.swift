//
//  AboutMeViewController.swift
//  Authorization
//
//  Created by Алексей on 30.05.2021.
//

import UIKit

class AboutMeViewController: UIViewController {
    @IBOutlet weak var imageProfile: UIImageView!
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var ageValueLabel: UILabel!
    @IBOutlet weak var cityValueLabel: UILabel!
    @IBOutlet weak var relationshipValueLabel: UILabel!
    @IBOutlet weak var birthdayValueLabel: UILabel!
    
    var user = User(name: "",
                    lastName: "",
                    age: 0,
                    photo: "",
                    currentCity: "",
                    relationship: "",
                    birthday: "",
                    login: "",
                    password: "",
                    hobby: [Hobby(title: "", description: "", image: "")],
                    profession: [Profession(title: "", description: "", image: "")]
    )

    override func viewDidLoad() {
        super.viewDidLoad()
        imageProfile.image = UIImage(named: user.photo)
        imageProfile.layer.cornerRadius = 70
        
        nameLabel.text = "\(user.name) \(user.lastName)"
        ageValueLabel.text = "\(user.age)"
        cityValueLabel.text = "\(user.currentCity)"
        relationshipValueLabel.text = "\(user.relationship)"
        birthdayValueLabel.text = "\(user.birthday)"
    }

}
