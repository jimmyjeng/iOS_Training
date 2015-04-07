//
//  ViewController.h
//  train07
//
//  Created by JimmyJeng on 2015/3/10.
//  Copyright (c) 2015年 JimmyJeng. All rights reserved.
//

#import <UIKit/UIKit.h>

#import <MediaPlayer/MediaPlayer.h>
#import <MobileCoreServices/MobileCoreServices.h>

@interface ViewController : UIViewController  <UIImagePickerControllerDelegate, UINavigationControllerDelegate>

@property (strong, nonatomic) NSURL *videoURL;
@property (strong, nonatomic) MPMoviePlayerController *videoController;

- (IBAction)captureVideo:(id)sender;

@end

