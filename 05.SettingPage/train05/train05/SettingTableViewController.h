//
//  SettingTableViewController.h
//  train05
//
//  Created by JimmyJeng on 2015/3/10.
//  Copyright (c) 2015年 JimmyJeng. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SettingTableViewController : UITableViewController
@property (weak, nonatomic) IBOutlet UISwitch *IESwitch;

- (IBAction)IETouch:(id)sender;
@end
