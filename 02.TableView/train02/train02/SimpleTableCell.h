//
//  SimpleTableCell.h
//  train02
//
//  Created by JimmyJeng on 2015/3/4.
//  Copyright (c) 2015年 JimmyJeng. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SimpleTableCell : UITableViewCell

@property (nonatomic, weak) IBOutlet UILabel *nameLabel;
@property (nonatomic, weak) IBOutlet UILabel *moneyLabel;
@property (nonatomic, weak) IBOutlet UIImageView *thumbnailImageView;

@end
