//
//  LogOutViewController.swift
//  LogInHomeWork6
//
//  Created by Алишер Маликов on 05.11.2022.
//

import UIKit

class LogOutViewController: UIViewController {

    @IBOutlet var welcomLabel: UILabel!
    
    var loginText = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        welcomLabel.text = "Welcome, \(loginText)!"
    }
    


    @IBAction func logOutAction() {
        performSegue(withIdentifier: "unwindSegue", sender: nil)
    }
    
}
