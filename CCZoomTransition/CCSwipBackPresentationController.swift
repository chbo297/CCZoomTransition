//
//  CCSwipBackPresentationController.swift
//  CCGitHubPro
//
//  Created by bo on 22/12/2016.
//  Copyright © 2016 bo. All rights reserved.
//

import UIKit

//provider pan swipbackable interactionTransitioning

class CCSwipBackPresentationController: UIPresentationController {
    
    var transitionDidEndCallBack : ((_ containerView : UIView?) -> Swift.Void)?
    
    convenience init(presentedViewController: UIViewController, presenting presentingViewController: UIViewController?, transitionDidEnd : @escaping (_ containerView : UIView?) -> Swift.Void) {
        
        self.init(presentedViewController: presentedViewController, presenting: presentingViewController)
        self.transitionDidEndCallBack = transitionDidEnd
    }
    
    override func presentationTransitionDidEnd(_ completed: Bool) {
        super.presentationTransitionDidEnd(completed)
        
        self.transitionDidEndCallBack?(self.containerView)
    }
}
