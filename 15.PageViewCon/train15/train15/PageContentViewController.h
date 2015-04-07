//
//  PageContentViewController.h
//  train15
//
//  Created by JimmyJeng on 2015/3/12.
//  Copyright (c) 2015年 JimmyJeng. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PageContentViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *titleLabel;
@property (weak, nonatomic) IBOutlet UIImageView *backgroundImageView;

@property NSUInteger pageIndex;
@property NSString *titleText;
@property NSString *imageFile;
@end
