//
//  ProfileViewController.swift
//  Authorization
//
//  Created by Алексей on 29.05.2021.
//

import UIKit

class ProfileViewController: UIViewController {    
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
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let result = segue.destination as? HobbyViewController {
            result.hobby = user.hobby
        } else if let result = segue.destination as? ProfessionViewController {
            result.profession = user.profession
        } else if let result = segue.destination as? TableViewController {
            result.hobby = user.hobby
        }
        
    }
}
