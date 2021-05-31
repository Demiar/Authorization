//
//  ViewController.swift
//  Authorization
//
//  Created by Алексей on 25.05.2021.
//

import UIKit

class LoginViewController: UIViewController, UITextFieldDelegate {
    @IBOutlet weak var loginTextField: UITextField!
    @IBOutlet weak var passTextField: UITextField!
    
    @IBOutlet weak var logInButton: UIButton!
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        loginTextField.delegate = self
        passTextField.delegate = self
        loginTextField.returnKeyType = UIReturnKeyType.next
        passTextField.returnKeyType = UIReturnKeyType.done
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let tabBarController = segue.destination as? UITabBarController else { return }
        guard let viewControllers = tabBarController.viewControllers else { return }
        for viewController in viewControllers {
            if let result = viewController as? WelcomeViewController {
                result.loginValue = "\(user.name) \(user.lastName)"
            } else if let navigationVC = viewController as? UINavigationController {
                let aboutUserVC = navigationVC.topViewController as! ProfileViewController
                aboutUserVC.user = user
            } else if let result = viewController as? AboutMeViewController {
                result.user = user
            }
        }
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
        super.touchesBegan(touches, with: event)
    }
    
    @IBAction func logInButton(_ sender: UIButton) {
        if !verification() {
            alertMessage(title: "Error", message: "Login or Password is not correct!")
        }
    }
    
    @IBAction func forgotLoginButton(_ sender: UIButton) {
        alertMessage(title: "Forgot Login?", message: "Login is \(user.login)")
    }
    
    @IBAction func forgotPassButton(_ sender: UIButton) {
        alertMessage(title: "Forgot Password?", message: "Password is \(user.password)")
    }
    
    @IBAction func unwindToBack(_ unwindSegue: UIStoryboardSegue) {
        loginTextField.text = ""
        passTextField.text = ""
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        let nextTag = textField.tag + 1
            
        if let nextResponder = textField.superview?.viewWithTag(nextTag) {
            nextResponder.becomeFirstResponder()
        } else {
            textField.resignFirstResponder()
            logInButton.sendActions(for: .touchUpInside)
        }
        
        return true
    }
    
    private func verification() -> Bool {
        if loginTextField.text == user.login && passTextField.text == user.password {
            return true
        }
        return false
    }
    
    private func alertMessage(title: String, message: String, buttonTitle: String = "Ok") {
        let alert = UIAlertController(title: title, message: message, preferredStyle: UIAlertController.Style.alert)

        alert.addAction(UIAlertAction(title: buttonTitle, style: UIAlertAction.Style.default, handler: nil))

        self.present(alert, animated: true, completion: nil)
    }
}

