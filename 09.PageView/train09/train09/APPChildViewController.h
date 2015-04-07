//
//  APPChildViewController.h
//  train09
//
//  Created by JimmyJeng on 2015/3/11.
//  Copyright (c) 2015年 JimmyJeng. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface APPChildViewController : UIViewController 

@property (weak, nonatomic) IBOutlet UIPageControl *pageController;

@property (weak, nonatomic) IBOutlet UILabel *name;

@property (weak, nonatomic) IBOutlet UIImageView *myImg;

- (IBAction)handleSwipe:(UISwipeGestureRecognizer *)sender;
@end
