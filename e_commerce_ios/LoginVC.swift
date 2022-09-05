//
//  ViewController.swift
//  e_commerce_ios
//
//  Created by Abdallah yasser on 30/08/2022.
/////
/////
///need to add font and the color

import UIKit

class LoginVC: UIViewController {
    @IBOutlet weak var emailView: UIView!
    
    @IBOutlet weak var passwordView: UIView!
    
    @IBOutlet weak var loginButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationController?.navigationBar.prefersLargeTitles = true
        emailView.addLayer()
        passwordView.addLayer()
        loginButton.addLayer()
        
    }
    @IBAction func createNewAcountButtonPressed(_ sender: UIButton) {
        
        let signUpVC = storyboard?.instantiateViewController(withIdentifier: "SignUpVC")
        navigationController?.pushViewController(signUpVC!, animated: true)
    }
    @IBAction func forgetPasswordButtonPressed(_ sender: UIButton) {
        
        let ForegetPasswordVC = storyboard?.instantiateViewController(withIdentifier: "ForegetPasswordVC")
        navigationController?.pushViewController(ForegetPasswordVC!, animated: true)
        
        
        
    }
    @IBAction func loginButtonPressed(_ sender: UIButton) {
        
        let tabBar = storyboard?.instantiateViewController(withIdentifier: "TabBarController")
        let navigationController = UINavigationController(rootViewController: tabBar!)
      //  present.
        navigationController.modalPresentationStyle = .fullScreen
        present(navigationController, animated: true)
        
        
    }
    
    
    
    
}

