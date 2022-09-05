//
//  SignUpVC.swift
//  e_commerce_ios
//
//  Created by Abdallah yasser on 02/09/2022.
//

import UIKit

class SignUpVC: UIViewController {
    @IBOutlet weak var nameView: UIView!
    @IBOutlet weak var emailView: UIView!
    @IBOutlet weak var passwordView: UIView!
    @IBOutlet weak var signUpButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        nameView.addLayer()
        emailView.addLayer()
        passwordView.addLayer()
        signUpButton.addLayer()
    }
    
    
    @IBAction func haveAccountButtonClicked(_ sender: UIButton) {
        navigationController?.popViewController(animated: true)
    }
}
