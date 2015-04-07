//
//  ViewController.h
//  train17
//
//  Created by JimmyJeng on 2015/3/13.
//  Copyright (c) 2015年 JimmyJeng. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UIActionSheetDelegate>

- (IBAction)showNormal:(id)sender;

- (IBAction)showDel:(id)sender;
- (IBAction)showColor:(id)sender;
@property (weak, nonatomic) IBOutlet UIImageView *img01;
@end

