//
//  TYHollowoutView.m
//  TYHollowoutDemo
//
//  Created by tiny on 16/8/3.
//  Copyright © 2016年 tiny. All rights reserved.
//

#import "TYHollowoutView.h"

@implementation TYHollowoutView

-(instancetype)initWithFrame:(CGRect)frame
{
    if (self = [super initWithFrame:frame]) {
        [self initialize];
    }
    return self;
}

-(instancetype)initWithCoder:(NSCoder *)aDecoder
{
    if (self = [super initWithCoder:aDecoder]) {
        
        [self initialize];
    }
    return self;
}

-(void)initialize
{
    self.fillColor       = [UIColor whiteColor];
    self.backgroundColor = [UIColor clearColor];
    self.opaque          = NO;
}

-(void)setFillColor:(UIColor *)fillColor
{
    _fillColor = fillColor;
    [self setNeedsDisplay];
}


- (void)drawRect:(CGRect)rect {
    [super drawRect:rect];

    //设置填充
    [self.fillColor setFill];
    UIRectFill(rect);
    
    CGContextRef context = UIGraphicsGetCurrentContext();
    //绘制bezierPath路径 让其填充ClearColor
    for (UIBezierPath *path in self.paths) {
        CGContextAddPath(context, path.CGPath);
        CGContextSetBlendMode(context, kCGBlendModeClear);
        CGContextFillPath(context);
    }
}

@end
