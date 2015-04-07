//
//  PanViewController.h
//  train19
//
//  Created by JimmyJeng on 2015/3/13.
//  Copyright (c) 2015年 JimmyJeng. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PanViewController : UIViewController
@property (weak, nonatomic) IBOutlet UIView *testView;
@property (weak, nonatomic) IBOutlet UILabel *horizontalVelocityLabel;
@property (weak, nonatomic) IBOutlet UILabel *verticalVelocityLabel;
@end
