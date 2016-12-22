//
//  CCCollectionViewController.swift
//  CCGitHubPro
//
//  Created by bo on 20/12/2016.
//  Copyright © 2016 bo. All rights reserved.
//

import UIKit

private let reuseIdentifier = "Cell"

class CCCollectionViewController: UICollectionViewController , UICollectionViewDelegateFlowLayout{

    override func viewDidLoad() {
        super.viewDidLoad()

        // Register cell classes
        self.collectionView!.register(CCCollectionViewCell.self, forCellWithReuseIdentifier: reuseIdentifier)
        
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let width = (collectionView.bounds.size.width - 15)/2
        return CGSize.init(width: width, height: width)
    }

    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }


    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 18
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath)
    
        // Configure the cell
        if let imageCell = cell as? CCCollectionViewCell {
            let imgName = String.init(format: "img_%02d", indexPath.row%18 + 59)
            imageCell.imageView.image = UIImage.init(named: imgName)
        }
        
        return cell
    }
    
    override func collectionView(_ collectionView: UICollectionView, shouldSelectItemAt indexPath: IndexPath) -> Bool {
        
        let vc = CCDetailViewController()
        
        if let imageCell = collectionView.cellForItem(at: indexPath) as? CCCollectionViewCell {
            vc.cc_setZoomTransition(originalView: imageCell.imageView)
//            vc.cc_swipeBackDisabled = true
        }
        
        self.present(vc, animated: true, completion: nil)
        
        return false
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        get {
            return .lightContent
        }
    }
 

}
