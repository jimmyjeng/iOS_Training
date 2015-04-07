//
//  RecipeViewController.h
//  train04
//
//  Created by JimmyJeng on 2015/3/10.
//  Copyright (c) 2015年 JimmyJeng. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface RecipeViewController : UIViewController

@property (weak, nonatomic) IBOutlet UIImageView *recipeImageView;

@property (weak, nonatomic) NSString *recipeImageName;

- (IBAction)close:(id)sender;
@end
