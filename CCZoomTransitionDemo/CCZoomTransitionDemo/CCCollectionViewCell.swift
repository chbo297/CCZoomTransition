//
//  CCCollectionViewCell.swift
//  CCGitHubPro
//
//  Created by bo on 20/12/2016.
//  Copyright © 2016 bo. All rights reserved.
//

import UIKit

class CCCollectionViewCell: UICollectionViewCell {
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    lazy var imageView : UIImageView = {
        var imv = UIImageView()
        imv.contentMode = UIViewContentMode.scaleAspectFill
        imv.clipsToBounds = true
        return imv
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        imageView.frame = self.contentView.bounds
        self.contentView.addSubview(imageView)
        imageView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
    }
}
