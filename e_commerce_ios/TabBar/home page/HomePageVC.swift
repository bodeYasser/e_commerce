//
//  HomePageVC.swift
//  e_commerce_ios
//
//  Created by Abdallah yasser on 04/09/2022.
//

import UIKit

class HomePageVC: UIViewController {
    @IBOutlet weak var collectionView: UICollectionView!
    let images :[UIImage?] = [UIImage(named: "lunchScreen"),UIImage(named: "cat2"),UIImage(named: "cat3")]
    let categories :[String] = ["New collection","Summer Sale","Mean‘s hoodies"]
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.isNavigationBarHidden = true
        collectionView.dataSource = self
        collectionView.delegate = self
        //how to conncet the cell with collection view
        //important line
        collectionView.register(UINib(nibName: "CollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "CollectionViewCell")

        
    }
    

}



extension HomePageVC : UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout{
    
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        3
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CollectionViewCell", for: indexPath) as! CollectionViewCell
        
        cell.categoryImageView.image = images[indexPath.row]
        cell.categoryLabel.text = categories[indexPath.row]
        cell.backgroundColor = UIColor.blue
        
        return cell
        
        
    }
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let width = collectionView.frame.width
        let height = collectionView.frame.height / 2
        
        
        switch indexPath.row {
        case 0 :
         return   CGSize(width: width, height: height)
    
    default :
        
       return  CGSize(width: width/2, height: height)

        }
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if indexPath.row == 0 {
            let NewCollectionVC = storyboard?.instantiateViewController(withIdentifier: "NewCollectionVC")
            navigationController?.pushViewController(NewCollectionVC!, animated: true)
        }
    }
    
    
}
