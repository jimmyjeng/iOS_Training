//
//  RecipeDetailViewController.m
//  train03
//
//  Created by JimmyJeng on 2015/3/5.
//  Copyright (c) 2015年 JimmyJeng. All rights reserved.
//

#import "RecipeDetailViewController.h"

@interface RecipeDetailViewController ()

@end

@implementation RecipeDetailViewController

@synthesize recipePhoto;
@synthesize prepTimeLabel;
@synthesize ingredientTextView;
@synthesize recipe;

@synthesize topRange;
@synthesize height;
@synthesize width;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    // Set the Label text with the selected recipe
    self.title = recipe.name;
    self.prepTimeLabel.text = recipe.prepTime;
    self.recipePhoto.image = [UIImage imageNamed:recipe.imageFile];
    
    NSMutableString *ingredientText = [NSMutableString string];
    for (NSString* ingredient in recipe.ingredients) {
        [ingredientText appendFormat:@"%@\n", ingredient];
    }
    self.ingredientTextView.text = ingredientText;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)viewDidLayoutSubviews
{
    [super viewDidLayoutSubviews];
    
    UIInterfaceOrientation orientation = [UIApplication sharedApplication].statusBarOrientation;
    
//    switch (orientation) {
//        case UIInterfaceOrientationUnknown:
//            //            self.height.constant = 120;
//            break;
//        case UIInterfaceOrientationPortrait:
//        {
//            self.topRange.constant = 50;
//            self.width.constant = 297;
//            self.height.constant = 199;
//            break;
//        }
//        case UIInterfaceOrientationPortraitUpsideDown:
//            break;
//        case UIInterfaceOrientationLandscapeLeft:
//        {
//            self.topRange.constant = 20;
//            self.width.constant = 200;
//            self.height.constant = 100;
//            break;
//        }
//        case UIInterfaceOrientationLandscapeRight:
//        {
//            self.topRange.constant = 20;
//            self.width.constant = 200;
//            self.height.constant = 100;
//            break;
//        }
//            
//        default:
//            break;
//    }
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
