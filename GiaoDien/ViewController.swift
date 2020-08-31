//
//  ViewController.swift
//  GiaoDien
//
//  Created by Van Thanh on 8/31/20.
//  Copyright © 2020 Van Thanh. All rights reserved.
//

import UIKit

var array: [TinTuc] = [TinTuc(img: "01", content: "vanthanh"), TinTuc(img: "02", content: "vanthanh"), TinTuc(img: "03", content: "vanthanh"),TinTuc(img: "04", content: "vanthanh"), TinTuc(img: "05", content: "vanthanh")]

class ViewController: UIViewController {
    
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.register(UINib(nibName: "DongGiaoDienCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "cellxib")
        // Do any additional setup after loading the view.
        collectionView.dataSource = self
        collectionView.delegate = self
        let pinLayout = CustomLayout()
        pinLayout.delegate = self
        collectionView.collectionViewLayout = pinLayout
        
    }

    
}
extension ViewController: UICollectionViewDelegate, UICollectionViewDataSource, CustomLayoutDelegate{
   
    
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return array.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cellxib", for: indexPath) as! DongGiaoDienCollectionViewCell
        let tintuc = array[indexPath.row]
        print(tintuc)
        cell.load(tintuc)
        cell.layer.cornerRadius = 15
        
        return cell
    }
        func collectionView(_ collectionView: UICollectionView, sizeOfPhotoAtIndexPath indexPath: IndexPath) -> CGSize {
            let img = UIImage(named: array[indexPath.item].img!)
            return img!.size
        }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
         collectionView.deselectItem(at: indexPath, animated: true)
        }
   
        
}
