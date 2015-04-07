//
//  RecipeCollectionViewController.h
//  train04
//
//  Created by JimmyJeng on 2015/3/6.
//  Copyright (c) 2015年 JimmyJeng. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface RecipeCollectionViewController : UICollectionViewController


@property (weak, nonatomic) IBOutlet UIBarButtonItem *shareButton;

- (IBAction)shareButtonTouched:(id)sender;
@end
