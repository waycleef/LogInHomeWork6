//
//  LogOutViewController.swift
//  LogInHomeWork6
//
//  Created by Алишер Маликов on 05.11.2022.
//

import UIKit

class LogOutViewController: UIViewController {

    @IBOutlet var welcomLabel: UILabel!
    
    var loginText: String!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        guard let login = self.loginText else { return }
        welcomLabel.text = "Welcome, \(login)"
    }
    


    @IBAction func logOutAction() {
        performSegue(withIdentifier: "unwindSegue", sender: nil)
    }
    
}
