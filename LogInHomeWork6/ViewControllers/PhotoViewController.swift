//
//  PhotoViewController.swift
//  LogInHomeWork6
//
//  Created by Алишер Маликов on 09.11.2022.
//

import UIKit

class PhotoViewController: UIViewController {

    @IBOutlet var imageView: UIImageView!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        imageView.image = UIImage(named: "Image")

    }


}
