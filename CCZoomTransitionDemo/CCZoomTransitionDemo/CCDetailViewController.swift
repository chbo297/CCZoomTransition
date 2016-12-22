//
//  CCDetailViewController.swift
//  CCGitHubPro
//
//  Created by bo on 20/12/2016.
//  Copyright © 2016 bo. All rights reserved.
//

import UIKit

class CCDetailViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.view.backgroundColor = UIColor.init(red: 0.8, green: 0.68, blue: 0.68, alpha: 1)
        
        let label = UILabel.init()
        
        label.font = UIFont.systemFont(ofSize: 30)
        label.text = "Content"
        label.sizeToFit()
        let size = self.view.bounds.size
        label.center = CGPoint.init(x: size.width/2, y: size.height/2)
        self.view.addSubview(label)
        
        let closebutton = UIButton.init()
        closebutton.setTitle("←", for: .normal)
        closebutton.setTitleColor(UIColor.black, for: .normal)
        closebutton.titleLabel?.font = UIFont.systemFont(ofSize: 40)
        
        closebutton.sizeToFit()
        closebutton.frame = CGRect.init(origin: CGPoint.init(x: 15, y: 15), size: closebutton.bounds.size)
        self.view.addSubview(closebutton)
        
        closebutton.addTarget(self, action: #selector(self.tapClose(sender:)), for: .touchUpInside)
        
        
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        get {
            return .default
        }
    }
    
    func tapClose(sender : UIButton) {
        self.dismiss(animated: true, completion: nil)
    }

}
