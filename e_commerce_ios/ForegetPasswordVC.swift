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
        emailView.addLayer()
        sendButton.addLayer()
    }
}
