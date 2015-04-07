//
//  ViewController.m
//  train17
//
//  Created by JimmyJeng on 2015/3/13.
//  Copyright (c) 2015年 JimmyJeng. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)showNormal:(id)sender {
    UIActionSheet *actionSheet = [[UIActionSheet alloc] initWithTitle:@"What do you want to do with the file?"
                                                             delegate:self
                                                    cancelButtonTitle:@"Cancel"
                                               destructiveButtonTitle:@"Keep it"
                                                    otherButtonTitles:@"Avril", @"Within Temptation", nil];
    
    actionSheet.tag = 100;
    [actionSheet showInView:self.view];
}

- (IBAction)showDel:(id)sender {
    UIActionSheet *actionSheet = [[UIActionSheet alloc] initWithTitle:@"Really delete the selected contact?"
                                                             delegate:self
                                                    cancelButtonTitle:@"No, I changed my mind"
                                               destructiveButtonTitle:@"Yes, delete it"
                                                    otherButtonTitles:nil];
    actionSheet.tag = 200;
    [actionSheet showInView:self.view];
}

- (IBAction)showColor:(id)sender {
    UIActionSheet *actionSheet = [[UIActionSheet alloc] initWithTitle:@"Pick a color:"
                                                             delegate:self
                                                    cancelButtonTitle:nil
                                               destructiveButtonTitle:nil
                                                    otherButtonTitles:@"Red", @"Green", @"Blue", @"Orange", @"Purple", nil];
    
    actionSheet.tag = 300;
    [actionSheet showInView:self.view];
}

-(void)actionSheet:(UIActionSheet *)actionSheet clickedButtonAtIndex:(NSInteger)buttonIndex{
    NSString *action = [actionSheet buttonTitleAtIndex:buttonIndex];
    if (actionSheet.tag == 100) {
        NSLog(@"The Normal action sheet.");
        if ([action isEqualToString:@"Avril"]) {
            self.img01.image = [UIImage imageNamed:@"Avril.jpg"];
        }
        else if ([action isEqualToString:@"Within Temptation"]){
            self.img01.image = [UIImage imageNamed:@"Within_Temptation.jpg"];
        }
        
        //self.backgroundImageView.image = [UIImage imageNamed:self.imageFile];
    }
    else if (actionSheet.tag == 200){
        NSLog(@"The Delete confirmation action sheet.");
        if([action isEqualToString:@"Yes, delete it"]) {
            self.img01.image = nil;
        }
    }
    else{
        NSLog(@"The Color selection action sheet.");
    }
    
    NSLog(@"Index = %d - Title = %@", buttonIndex, [actionSheet buttonTitleAtIndex:buttonIndex]);
}

-(void)actionSheet:(UIActionSheet *)actionSheet didDismissWithButtonIndex:(NSInteger)buttonIndex{
    if (actionSheet.tag == 300) {
        NSLog(@"From didDismissWithButtonIndex - Selected Color: %@", [actionSheet buttonTitleAtIndex:buttonIndex]);
        
        NSString *color = [actionSheet buttonTitleAtIndex:buttonIndex];
        if ( [color isEqualToString:@"Red"] )
        {
            self.view.backgroundColor = [UIColor redColor];
        }
        else if ( [color isEqualToString:@"Green"] )
        {
            self.view.backgroundColor = [UIColor greenColor];
        }
        else if ( [color isEqualToString:@"Blue"] )
        {
            self.view.backgroundColor = [UIColor blueColor];
        }
        else if ( [color isEqualToString:@"Orange"] )
        {
            self.view.backgroundColor = [UIColor orangeColor];
        }
        else if ( [color isEqualToString:@"Purple"] )
        {
            self.view.backgroundColor = [UIColor purpleColor];
        }
        else
        {
            self.view.backgroundColor = [UIColor grayColor];
        }

    }
}

-(void)actionSheet:(UIActionSheet *)actionSheet willDismissWithButtonIndex:(NSInteger)buttonIndex{
    if (actionSheet.tag == 300) {
        NSLog(@"From willDismissWithButtonIndex - Selected Color: %@", [actionSheet buttonTitleAtIndex:buttonIndex]);
    }
}
@end
