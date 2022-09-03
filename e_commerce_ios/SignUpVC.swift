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
        
        makeBorder(view: nameView)
        makeBorder(view: emailView)
        makeBorder(view: passwordView)
        makeBorder(view: signUpButton)
    }
    
    
    @IBAction func haveAccountButtonClicked(_ sender: UIButton) {
        navigationController?.popViewController(animated: true)
    }
    
}
func makeBorder(view : UIView){
    
    view.layer.cornerRadius = 10
    view.layer.shadowColor = UIColor.lightGray.cgColor
    view.layer.shadowOffset = CGSize(width: 2, height: 3)
    let shadowPath = UIBezierPath(roundedRect: view.bounds, cornerRadius: 10)
    view.layer.shadowPath = shadowPath.cgPath
    view.layer.shadowOpacity = 0.5
    
}
