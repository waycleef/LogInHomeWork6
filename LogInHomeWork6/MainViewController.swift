//
//  ViewController.swift
//  LogInHomeWork6
//
//  Created by Алишер Маликов on 05.11.2022.
//

import UIKit

class MainViewController: UIViewController {

    @IBOutlet var passwordTF: UITextField!
    @IBOutlet var usernameTX: UITextField!
    
    private let userName = "User"
    private let password = "Password"
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let logOutVC = segue.destination as? LogOutViewController else { return }
        logOutVC.loginText = usernameTX.text
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    @IBAction func unwind(segue: UIStoryboardSegue) {
        guard segue.identifier == "unwindSegue" else { return }
        passwordTF.text = ""
        usernameTX.text = ""
    }
    
    @IBAction func logInTappedAction(_ sender: UIButton) {
        guard let inputText = usernameTX.text, !inputText.isEmpty else {
            showAlert(with: "Invalid User Name or Password!", andMessage: "Please enter correct")
            return
        }
        
        if passwordTF.text != password && usernameTX.text != userName {
            showAlert(with: "Wrong User Name or Password!", andMessage: "Tap button Forgot User Name? and Forgot Password?")
        } else {
            performSegue(withIdentifier: "detailSegue", sender: nil)
        }
    }
    
    
    @IBAction func forgotUserTapAction() {
        showAlert(with: "Oops!", andMessage: "Your login is User ☺️")
    }
    
    @IBAction func forgotPasswordTapAction() {
        showAlert(with: "Oops!", andMessage: "Your password is Password 🤓")
    }
}

// MARK - UIAlertController

extension MainViewController {
    private func showAlert(with title: String, andMessage message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default) {_ in
            self.passwordTF.text = ""
        }
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}

