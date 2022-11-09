//
//  InfoViewController.swift
//  LogInHomeWork6
//
//  Created by Алишер Маликов on 09.11.2022.
//

import UIKit

class InfoViewController: UIViewController {

    @IBOutlet var mainLabel: UILabel!
    @IBOutlet var infoLabel: UILabel!
    
    private let personData = Person()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        mainLabel.text = "\(personData.name) \(personData.surname)"
        infoLabel.text = personData.info

    }
}
