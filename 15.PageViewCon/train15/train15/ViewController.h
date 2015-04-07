//
//  ViewController.h
//  train15
//
//  Created by JimmyJeng on 2015/3/12.
//  Copyright (c) 2015年 JimmyJeng. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UIPageViewControllerDataSource>

- (IBAction)startWalkthrough:(id)sender;
@property (strong, nonatomic) UIPageViewController *pageViewController;
@property (strong, nonatomic) NSArray *pageTitles;
@property (strong, nonatomic) NSArray *pageImages;


@end

