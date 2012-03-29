//
//  ViewController.h
//  BTSMRT
//
//  Created by Worapong Kaewtong on 3/17/55 BE.
//  Copyright (c) 2555 BE upic.me. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UIScrollViewDelegate>{
    IBOutlet UIScrollView *scrollView;
    IBOutlet UIImageView *fullImageView;
}
@property (nonatomic,retain) UIScrollView *scrollView;
@property (nonatomic,retain) UIImageView *fullImageView;
@end
