//
//  SwipeViewController.m
//  train19
//
//  Created by JimmyJeng on 2015/3/13.
//  Copyright (c) 2015年 JimmyJeng. All rights reserved.
//

#import "SwipeViewController.h"

@interface SwipeViewController ()
-(void)slideToRightWithGestureRecognizer:(UISwipeGestureRecognizer *)gestureRecognizer;

-(void)slideToLeftWithGestureRecognizer:(UISwipeGestureRecognizer *)gestureRecognizer;
@end

@implementation SwipeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    UISwipeGestureRecognizer *swipeRightOrange = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(slideToRightWithGestureRecognizer:)];
    swipeRightOrange.direction = UISwipeGestureRecognizerDirectionRight;
    
    UISwipeGestureRecognizer *swipeLeftOrange = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(slideToLeftWithGestureRecognizer:)];
    swipeLeftOrange.direction = UISwipeGestureRecognizerDirectionLeft;
    
    //[self.viewYellow addGestureRecognizer:swipeRightOrange];
    [self.viewYellow addGestureRecognizer:swipeLeftOrange];
    
    UISwipeGestureRecognizer *swipeRightGreen = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(slideToRightWithGestureRecognizer:)];
    swipeRightGreen.direction = UISwipeGestureRecognizerDirectionRight;
    
    UISwipeGestureRecognizer *swipeLeftGreen = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(slideToLeftWithGestureRecognizer:)];
    swipeLeftGreen.direction = UISwipeGestureRecognizerDirectionLeft;
    
    [self.viewGreen addGestureRecognizer:swipeRightGreen];
    [self.viewGreen addGestureRecognizer:swipeLeftGreen];
    
    UISwipeGestureRecognizer *swipeRightBlack = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(slideToRightWithGestureRecognizer:)];
    swipeRightBlack.direction = UISwipeGestureRecognizerDirectionRight;
    
    UISwipeGestureRecognizer *swipeLeftBlack = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(slideToLeftWithGestureRecognizer:)];
    swipeLeftBlack.direction = UISwipeGestureRecognizerDirectionLeft;
    
    [self.viewRed addGestureRecognizer:swipeRightBlack];
    //[self.viewRed addGestureRecognizer:swipeLeftBlack];
}

-(void)slideToRightWithGestureRecognizer:(UISwipeGestureRecognizer *)gestureRecognizer{
    [UIView animateWithDuration:0.5 animations:^{
        self.viewYellow.frame = CGRectOffset(self.viewYellow.frame, 320.0, 0.0);
        self.viewGreen.frame = CGRectOffset(self.viewGreen.frame, 320.0, 0.0);
        self.viewRed.frame = CGRectOffset(self.viewRed.frame, 320.0, 0.0);
    }];
}

-(void)slideToLeftWithGestureRecognizer:(UISwipeGestureRecognizer *)gestureRecognizer{
    [UIView animateWithDuration:0.5 animations:^{
        self.viewYellow.frame = CGRectOffset(self.viewYellow.frame, -320.0, 0.0);
        self.viewGreen.frame = CGRectOffset(self.viewGreen.frame, -320.0, 0.0);
        self.viewRed.frame = CGRectOffset(self.viewRed.frame, -320.0, 0.0);
    }];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
