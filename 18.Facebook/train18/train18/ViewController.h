//
//  ViewController.h
//  train18
//
//  Created by JimmyJeng on 2015/3/13.
//  Copyright (c) 2015年 JimmyJeng. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <FacebookSDK/FacebookSDK.h>


@interface ViewController : UIViewController<FBLoginViewDelegate>

@property (weak, nonatomic) IBOutlet FBLoginView *loginButton;

@property (weak, nonatomic) IBOutlet UILabel *lblLoginStatus;

@property (weak, nonatomic) IBOutlet UILabel *lblUsername;

@property (weak, nonatomic) IBOutlet UILabel *lblEmail;

@property (weak, nonatomic) IBOutlet FBProfilePictureView *profilePicture;
@end

