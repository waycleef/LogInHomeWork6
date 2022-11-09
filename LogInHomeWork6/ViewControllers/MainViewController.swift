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
    
    private let userNameData = User()
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let tapBar = segue.destination as? UITabBarController else { return }
        guard let viewControllers = tapBar.viewControllers else { return }
        
        for viewController in viewControllers {
            if let logOutVC = viewController as? LogOutViewController {
                logOutVC.loginText = usernameTX.text!
            }
        }
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    @IBAction func unwind(segue: UIStoryboardSegue) {
        guard segue.identifier == "unwindSegue" else { return }
        passwordTF.text = ""
        usernameTX.text = ""
    }
    
    @IBAction func logInTappedAction(_ sender: UIButton) {
        guard usernameTX.text == userNameData.userName, passwordTF.text == userNameData.password else {
            showAlert(
                title: "Invalid login or password",
                andMessage: "Please, enter correct login and password",
                textField: passwordTF
            )
            return
        }
        performSegue(withIdentifier: "detailSegue", sender: nil)
    }
    
    
    
    @IBAction func forgotUserAndPasswordTapAction(_ sender: UIButton) {
        sender.tag == 0
        ? showAlert(title: "Oops!", andMessage: "Your login is User ☺️")
        : showAlert(title: "Oops!", andMessage: "Your password is Password 🤓")
        
    }
}



// MARK - UIAlertController

extension MainViewController {
    private func showAlert(title: String, andMessage message: String, textField: UITextField? = nil) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default) {_ in
            textField?.text = ""
        }
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}

