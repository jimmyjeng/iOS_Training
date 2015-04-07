//
//  ViewController.m
//  train08
//
//  Created by JimmyJeng on 2015/3/10.
//  Copyright (c) 2015年 JimmyJeng. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    // Local Push Notification
    
    UILocalNotification* localNotification = [[UILocalNotification alloc] init];
    localNotification.fireDate = [NSDate dateWithTimeIntervalSinceNow:10];
    localNotification.alertBody = @"Fire in the Hole";
    localNotification.timeZone = [NSTimeZone defaultTimeZone];
    localNotification.soundName = UILocalNotificationDefaultSoundName;
    localNotification.applicationIconBadgeNumber = [[UIApplication sharedApplication] applicationIconBadgeNumber] + 1;
    [[UIApplication sharedApplication] scheduleLocalNotification:localNotification];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)application:(UIApplication *)application didReceiveLocalNotification:(UILocalNotification *)notification
{
    UIApplicationState state = [application applicationState];
    if (state == UIApplicationStateActive) {
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Reminder"
                                                        message:notification.alertBody
                                                       delegate:self cancelButtonTitle:@"OK"
                                              otherButtonTitles:nil];
        [alert show];
    }
    
    // Set icon badge number to zero
    application.applicationIconBadgeNumber = 0;
    
}

// ios8
- (void)application:(UIApplication *)application handleActionWithIdentifier:(NSString *)identifier forLocalNotification:(UILocalNotification *)notification completionHandler:(void(^)())completionHandler{
    
    UIAlertView *alertView = [[UIAlertView alloc]initWithTitle:@"Notification Received" message:notification.alertBody delegate:nil 	cancelButtonTitle:@"OK" otherButtonTitles:nil, nil];
    [alertView show];
    
    // Set icon badge number to zero
    application.applicationIconBadgeNumber = 0;
    
}
@end
