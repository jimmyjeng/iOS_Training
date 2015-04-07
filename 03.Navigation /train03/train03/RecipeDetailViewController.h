//
//  RecipeDetailViewController.h
//  train03
//
//  Created by JimmyJeng on 2015/3/5.
//  Copyright (c) 2015年 JimmyJeng. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Recipe.h"

@interface RecipeDetailViewController : UIViewController

@property (weak, nonatomic) IBOutlet UIImageView *recipePhoto;

@property (weak, nonatomic) IBOutlet UILabel *prepTimeLabel;

@property (weak, nonatomic) IBOutlet UITextView *ingredientTextView;


@property (weak, nonatomic) IBOutlet NSLayoutConstraint *topRange;

@property (weak, nonatomic) IBOutlet NSLayoutConstraint *width;

@property (weak, nonatomic) IBOutlet NSLayoutConstraint *height;

@property (nonatomic, strong) Recipe *recipe;
@end
