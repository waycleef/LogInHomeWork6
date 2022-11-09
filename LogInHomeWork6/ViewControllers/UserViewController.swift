//
//  UserViewController.swift
//  LogInHomeWork6
//
//  Created by Алишер Маликов on 09.11.2022.
//

import UIKit

class UserViewController: UIViewController {

    
    @IBOutlet var generalLabel: UILabel!
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var surName: UILabel!
    @IBOutlet var companyLabel: UILabel!
    @IBOutlet var departmentLabel: UILabel!
    @IBOutlet var jobTitleLabel: UILabel!
    
    private let personData = Person()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        generalLabel.text = "\(personData.name) \(personData.surname)"
        nameLabel.text = "Имя: \(personData.name)"
        surName.text = "Фамилия: \(personData.surname)"
        companyLabel.text = "Компания: \(personData.company)"
        departmentLabel.text = "Отдел: \(personData.department)"
        jobTitleLabel.text = "Должность: \(personData.jobTitle)"
        
    }

}
