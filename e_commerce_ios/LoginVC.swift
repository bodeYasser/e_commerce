//
//  ViewController.swift
//  e_commerce_ios
//
//  Created by Abdallah yasser on 30/08/2022.
//

import UIKit

class LoginVC: UIViewController {
    @IBOutlet weak var emailView: UIView!
    
    @IBOutlet weak var passwordView: UIView!
    
    @IBOutlet weak var loginButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationController?.navigationBar.prefersLargeTitles = true
        makeBorder(view: emailView)
        makeBorder(view: passwordView)
        makeBorder(view: loginButton)
        
    }
    
    
    func makeBorder(view : UIView){
        
        view.layer.cornerRadius = 10
        view.layer.shadowColor = UIColor.lightGray.cgColor
        view.layer.shadowOffset = CGSize(width: 2, height: 3)
        let shadowPath = UIBezierPath(roundedRect: view.bounds, cornerRadius: 10)
        view.layer.shadowPath = shadowPath.cgPath
        view.layer.shadowOpacity = 0.5
        
    }

}

