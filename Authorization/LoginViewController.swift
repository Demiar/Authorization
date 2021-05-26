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
        guard let result = segue.destination as? WelcomeViewController else {
            return
        }
        result.loginValue = loginTextField.text ?? ""
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
        alertMessage(title: "Forgot Login?", message: "Login is user")
    }
    
    @IBAction func forgotPassButton(_ sender: UIButton) {
        alertMessage(title: "Forgot Password?", message: "Password is pass")
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
            logInButton(logInButton)
        }
        
        return true
    }
    
    private func verification() -> Bool {
        if loginTextField.text == "user" && passTextField.text == "pass" {
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

