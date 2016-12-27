# CCZoomTransition  
[![Build Status](https://travis-ci.org/chbo297/CCZoomTransition.svg?branch=master)](https://travis-ci.org/chbo297/CCZoomTransition)  


'CCZoomTransition' is zoom transition for IOS ViewController，Looks like open the APP system effect.  
Only requires one line of code  
![pictap](https://github.com/chbo297/CCZoomTransition/blob/master/CCZoomTransitionDemo/demopic01.gif)  

panGesture swipBack:  
![picpan](https://github.com/chbo297/CCZoomTransition/blob/master/CCZoomTransitionDemo/demopic02.gif)  

#Getting Started

##Into Swift
  
```

let viewController = UIViewController()
viewController.cc_setZoomTransition(originalView: targetView)
self.present(viewController, animated: true, completion: nil)

```
##Into Objective-C

```

#import "ProductModuleName-Swift.h"

UIViewController *viewController = [UIViewController new];
[viewController cc_setZoomTransitionWithOriginalView:targetView];
[self presentViewController:viewController animated:YES completion:nil];

```

######The "targetView" is view which tap in presentingView, or whose you wish being zoom.
