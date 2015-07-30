//
//  HDIndexPath.h
//  HDTableDemo
//
//  Created by 李远超 on 15/7/30.
//  Copyright (c) 2015年 xiaoyezi. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface HDIndexPath : NSObject

+ (HDIndexPath *)indexPathForColumn:(NSInteger)column inSection:(NSInteger)section;

@property (nonatomic, assign) NSInteger column;
@property (nonatomic, assign) NSInteger section;

@end