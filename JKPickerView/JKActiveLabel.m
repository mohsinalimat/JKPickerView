//
//  JKActiveLabel.m
//  SY-Sell
//
//  Created by Jakey on 14/11/24.
//  Copyright (c) 2014年 jakey. All rights reserved.
//

#import "JKActiveLabel.h"

@implementation JKActiveLabel

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}
-(void)willMoveToSuperview:(UIView *)newSuperview{
    if (newSuperview) {
        [self addGesture];

    }
}
-(void)addGesture{
    UITapGestureRecognizer *tap=[[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(tap:)];
    
    [self addGestureRecognizer:tap];
    tap.numberOfTapsRequired =1 ;
    tap.numberOfTouchesRequired = 1;
}
- (BOOL)isUserInteractionEnabled
{
    return YES;
}

- (BOOL)canBecomeFirstResponder
{
    return YES;
}
-(void)setLableTouched:(TouchLabel)toucheLable{
    _toucheLable = toucheLable;
   
}
-(void)tap:(UITapGestureRecognizer *)tap

{
    if (tap && _toucheLable) {
        _toucheLable((UILabel*)tap.view);
    }
}
@end
