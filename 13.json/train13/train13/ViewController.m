//
//  ViewController.m
//  train13
//
//  Created by JimmyJeng on 2015/3/12.
//  Copyright (c) 2015年 JimmyJeng. All rights reserved.
//

#import "ViewController.h"
#import "JsonCell.h"
@interface ViewController ()
    
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    //tabel01 = [NSMutableArray arrayWithObjects:@"Luffy", @"Zoro", @"Usopp", @"Sanji", @"Namei", @"Chopper", @"Robin", @"Franky", @"Brook", nil];
    
    //tabel02 = [NSMutableArray arrayWithObjects:@"3000000000" , @"120000000" , @"30000000", @"77000000" , @"16000000" , @"50" , @"80000000" , @"44000000" , @"33000000",nil];
    
    tabel01 = [[NSMutableArray alloc] init];
    tabel02 = [[NSMutableArray alloc] init];
    tabelH = [[NSMutableArray alloc] init];
    tabelL = [[NSMutableArray alloc] init];
    tabelW = [[NSMutableArray alloc] init];
    
    // load file
    NSString *path = [[NSBundle mainBundle] pathForResource:@"json" ofType:@"txt"];
    NSData *data = [NSData dataWithContentsOfFile:path];
    
    // parse json
    NSArray *jsonObj = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingMutableContainers error:nil];
    
    for( NSDictionary *p in jsonObj ){
        NSString *id = [p objectForKey:@"id"];
        NSString *name = [p objectForKey:@"name"];
        NSString *price = [p objectForKey:@"price"];
        NSArray *tags = [p objectForKey:@"tags"];
        NSDictionary *dimensions = [p objectForKey:@"dimensions"];
        
        NSLog(@"id :%@ , name:%@ , price:%@  ,tags:%@ , dim:%@ ",id,name,price,tags,dimensions);
        [tabel01 addObject:name];
        [tabel02 addObject:price];
        [tabelH  addObject:[dimensions objectForKey:@"height"]];
        [tabelL  addObject:[dimensions objectForKey:@"length"]];
        [tabelW  addObject:[dimensions objectForKey:@"width"]];
      
    }
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//inform the table view how many rows are in the section
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    NSLog(@"count:%d",[tabel01 count]);
    return [tabel01 count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *simpleTableIdentifier = @"JsonCell";
    
    JsonCell *cell = (JsonCell *)[tableView dequeueReusableCellWithIdentifier:simpleTableIdentifier];
    if (cell == nil)
    {
        NSArray *nib = [[NSBundle mainBundle] loadNibNamed:@"JsonCell" owner:self options:nil];
        cell = [nib objectAtIndex:0];
    }

    NSLog(@"[%d]",indexPath.row);
    NSLog(@"[]** %@",[tabel01 objectAtIndex:indexPath.row]);
    NSLog(@"[]** %@",[tabel02 objectAtIndex:indexPath.row]);
    NSLog(@"[]** %@",[tabelH objectAtIndex:indexPath.row]);
    NSLog(@"[]** %@",[tabelW objectAtIndex:indexPath.row]);
    NSLog(@"[]** %@",[tabelL objectAtIndex:indexPath.row]);
    
    NSString *lab01 = [NSString stringWithFormat:@"%@", [tabel01 objectAtIndex:indexPath.row]];
    NSString *lab02 = [NSString stringWithFormat:@"%@", [tabel02 objectAtIndex:indexPath.row]];
    NSString *labh = [NSString stringWithFormat:@"H:%@", [tabelH objectAtIndex:indexPath.row]];
    NSString *labw = [NSString stringWithFormat:@"W:%@", [tabelW objectAtIndex:indexPath.row]];
    NSString *labl = [NSString stringWithFormat:@"L:%@", [tabelL objectAtIndex:indexPath.row]];
    
    cell.label01.text = lab01;
    cell.label02.text = lab02;
    cell.labelH.text = labh;
    cell.labelW.text = labw;
    cell.labelL.text = labl;

    
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 100;
}
@end
