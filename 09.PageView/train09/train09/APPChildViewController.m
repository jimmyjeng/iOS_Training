//
//  APPChildViewController.m
//  train09
//
//  Created by JimmyJeng on 2015/3/11.
//  Copyright (c) 2015年 JimmyJeng. All rights reserved.
//

#import "APPChildViewController.h"

@interface APPChildViewController ()
{
    NSMutableArray *imgArray;
    NSMutableArray *nameArray;
}

@end

@implementation APPChildViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    imgArray = [[NSMutableArray alloc] initWithObjects:@"luffy.jpg",@"zoro.jpg",@"sanji.jpg", nil];
    nameArray = [[NSMutableArray alloc] initWithObjects:@"Monkey·D·Luffy",@"Roronoa·Zoro",@"Sanji", nil];
    self.pageController.numberOfPages = [imgArray count ];
    
    [self showimage];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)showimage
{
    NSString *fileName = [imgArray objectAtIndex:self.pageController.currentPage];
    self.myImg.image = [UIImage imageNamed:fileName];
    self.name.text = [nameArray objectAtIndex:self.pageController.currentPage];
}


/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)handleSwipe:(UISwipeGestureRecognizer *)sender {
    switch (sender.direction) {
        case UISwipeGestureRecognizerDirectionUp:
            NSLog(@"UP");
            break;
        case UISwipeGestureRecognizerDirectionDown:
            NSLog(@"Down");
            break;
        case UISwipeGestureRecognizerDirectionLeft:
            NSLog(@"Left");
            if (self.pageController.currentPage < [imgArray count]) {
                self.pageController.currentPage++;
                [self showimage];
            }
            break;
        case UISwipeGestureRecognizerDirectionRight:
            NSLog(@"Right");
            if (self.pageController.currentPage > 0) {
                self.pageController.currentPage--;
                [self showimage];
            }
            break;
            
        default:
            break;
    }
}
@end
