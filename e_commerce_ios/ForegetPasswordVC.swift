//
//  ForegetPasswordVC.swift
//  e_commerce_ios
//
//  Created by Abdallah yasser on 03/09/2022.
//

import UIKit

class ForegetPasswordVC: UIViewController {
    @IBOutlet weak var emailView: UIView!
    @IBOutlet weak var sendButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        makeBorder(view: emailView)
        makeBorder(view: sendButton)

    
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


