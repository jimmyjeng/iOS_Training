//
//  ViewController.h
//  train06
//
//  Created by JimmyJeng on 2015/3/10.
//  Copyright (c) 2015年 JimmyJeng. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UIImagePickerControllerDelegate, UINavigationControllerDelegate>


@property (weak, nonatomic) IBOutlet UIImageView *imageView;

- (IBAction)takePhoto:(id)sender;
- (IBAction)selectPhoto:(id)sender;
@end

