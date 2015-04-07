//
//  RotationViewController.m
//  train19
//
//  Created by JimmyJeng on 2015/3/13.
//  Copyright (c) 2015年 JimmyJeng. All rights reserved.
//

#import "RotationViewController.h"

@interface RotationViewController ()

-(void)handleRotationWithGestureRecognizer:(UIRotationGestureRecognizer *)rotationGestureRecognizer;

@end

@implementation RotationViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    UIRotationGestureRecognizer *rotationGestureRecognizer = [[UIRotationGestureRecognizer alloc] initWithTarget:self action:@selector(handleRotationWithGestureRecognizer:)];
    [self.testView addGestureRecognizer:rotationGestureRecognizer];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)handleRotationWithGestureRecognizer:(UIRotationGestureRecognizer *)rotationGestureRecognizer{
    self.testView.transform = CGAffineTransformRotate(self.testView.transform, rotationGestureRecognizer.rotation);
    
    rotationGestureRecognizer.rotation = 0.0;
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
