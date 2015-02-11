//
//  JKActiveLabel.h
//  SY-Sell
//
//  Created by Jakey on 14/11/24.
//  Copyright (c) 2014年 jakey. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef void (^TouchLabel)(UILabel *lable);
@interface JKActiveLabel : UILabel
{
    TouchLabel _toucheLable;
}
@property (readwrite) UIView *inputView;
@property (readwrite) UIView *inputAccessoryView;
@property (strong,nonatomic) NSString *dateString;

- (BOOL) canBecomeFirstResponder;
- (BOOL) isUserInteractionEnabled;
-(void)setLableTouched:(TouchLabel)toucheLable;

@end
