//
//  HDTableCell.h
//  HDTableDemo
//
//  Created by 李远超 on 15/7/27.
//  Copyright (c) 2015年 xiaoyezi. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface HDTableCell : UIView

@property (nonatomic, strong) UIImageView *imageView;
@property (nonatomic, strong) UILabel *textLabel;

@property (nonatomic, strong) UIView *contentView;

@property (nonatomic, getter=isSelected) BOOL selected;
@property (nonatomic, getter=isHighlighted) BOOL highlighted;

@end
