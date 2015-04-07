//
//  Recipe.h
//  train03
//
//  Created by JimmyJeng on 2015/3/6.
//  Copyright (c) 2015年 JimmyJeng. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Recipe : NSObject

@property (nonatomic, strong) NSString *name; // name of recipe
@property (nonatomic, strong) NSString *prepTime; // preparation time
@property (nonatomic, strong) NSString *imageFile; // image filename of recipe
@property (nonatomic, strong) NSArray *ingredients; // ingredients

@end
