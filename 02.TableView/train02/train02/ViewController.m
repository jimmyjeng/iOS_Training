//
//  ViewController.m
//  train02
//
//  Created by JimmyJeng on 2015/3/4.
//  Copyright (c) 2015年 JimmyJeng. All rights reserved.
//

#import "ViewController.h"
#import "SimpleTableCell.h"

@interface ViewController ()

@end

@implementation ViewController{
    NSMutableArray *recipes;
    NSMutableArray *thumbnails;
    NSMutableArray *moneys;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    recipes = [NSMutableArray arrayWithObjects:@"Luffy", @"Zoro", @"Usopp", @"Sanji", @"Namei", @"Chopper", @"Robin", @"Franky", @"Brook", nil];
    
    // Initialize thumbnails
    thumbnails = [NSMutableArray arrayWithObjects:@"luffy.jpg", @"zoro.jpg", @"usopp.jpg", @"sanji.jpg", @"namei.jpg", @"chopper.jpg", @"robin.jpg", @"franky.jpg", @"brook.jpg",  nil];
    
    moneys = [NSMutableArray arrayWithObjects:@"3000000000" , @"120000000" , @"30000000", @"77000000" , @"16000000" , @"50" , @"80000000" , @"44000000" , @"33000000",nil];
    
    
    // Find out the path of recipes.plist
    NSString *path = [[NSBundle mainBundle] pathForResource:@"recipes" ofType:@"plist"];
    
    // Load the file content and read the data into arrays
    NSMutableDictionary *dict = [[NSMutableDictionary alloc] initWithContentsOfFile:path];
    recipes = [dict objectForKey:@"RecipeName"];
    thumbnails = [dict objectForKey:@"Thumbnail"];
    moneys = [dict objectForKey:@"Money"];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//inform the table view how many rows are in the section
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    NSLog(@"count:%d",[recipes count]);
    return [recipes count];
}

//called every time when a table row is displayed
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *simpleTableIdentifier = @"SimpleTableCell";
    
    //UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:simpleTableIdentifier];
    
    SimpleTableCell *cell = (SimpleTableCell *)[tableView dequeueReusableCellWithIdentifier:simpleTableIdentifier];
    
    if (cell == nil) {
        //cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:simpleTableIdentifier];
        NSArray *nib = [[NSBundle mainBundle] loadNibNamed:@"SimpleTableCell" owner:self options:nil];
        cell = [nib objectAtIndex:0];
    }
    
    //cell.textLabel.text = [recipes objectAtIndex:indexPath.row];
    //cell.imageView.image = [UIImage imageNamed:@"chopper.jpg"];
    //cell.imageView.image = [UIImage imageNamed:[thumbnails objectAtIndex:indexPath.row]];
    
    
    cell.nameLabel.text = [recipes objectAtIndex:indexPath.row];
    cell.moneyLabel.text = [moneys objectAtIndex:indexPath.row];
    cell.thumbnailImageView.image = [UIImage imageNamed:[thumbnails objectAtIndex:indexPath.row]];
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 100;
}


- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    UIAlertView *messageAlert = [[UIAlertView alloc]
                                 initWithTitle:@"Row Selected" message:[recipes objectAtIndex:indexPath.row] delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
    
    // Display Alert Message
    [messageAlert show];
    
    UITableViewCell *cell = [tableView cellForRowAtIndexPath:indexPath];
    cell.accessoryType = UITableViewCellAccessoryCheckmark;
    
}

// crash sometime
//- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
//{
//
//    // Remove the row from data model
//    [recipes removeObjectAtIndex:indexPath.row];
//    [thumbnails removeObjectAtIndex:indexPath.row];
//    [moneys removeObjectAtIndex:indexPath.row];
//    
//    // Request table view to reload
//    [tableView reloadData];
//
//}
@end
