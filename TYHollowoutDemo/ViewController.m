//
//  ViewController.m
//  TYHollowoutDemo
//
//  Created by tiny on 16/8/3.
//  Copyright © 2016年 tiny. All rights reserved.
//

#import "ViewController.h"
#import "TYHollowoutView.h"

@interface ViewController ()

@property (nonatomic,strong)TYHollowoutView *hollowoutView;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    UIImageView *imageView = [[UIImageView alloc] initWithFrame:self.view.bounds];
    imageView.image        = [UIImage imageNamed:@"bg.jpg"];
    imageView.contentMode  = UIViewContentModeScaleAspectFill;
    [self.view addSubview:imageView];
    
    NSMutableArray *paths = [NSMutableArray array];
    
    {
        UIBezierPath* bezierPath = [UIBezierPath bezierPath];
        [bezierPath moveToPoint: CGPointMake(57.04, 31.19)];
        [bezierPath addLineToPoint: CGPointMake(125.55, 12.5)];
        [bezierPath addLineToPoint: CGPointMake(185.5, 91)];
        [bezierPath addLineToPoint: CGPointMake(57.04, 169.5)];
        [bezierPath addLineToPoint: CGPointMake(18.5, 91)];
        [bezierPath addLineToPoint: CGPointMake(57.04, 31.19)];
        [bezierPath closePath];
        [paths addObject:bezierPath];
    }
    
    {
        UIBezierPath* bezierPath = [UIBezierPath bezierPath];
        [bezierPath moveToPoint: CGPointMake(46.5, 245.5)];
        [bezierPath addLineToPoint: CGPointMake(137.5, 272.5)];
        [bezierPath addLineToPoint: CGPointMake(137.5, 211.5)];
        [bezierPath addLineToPoint: CGPointMake(90.5, 196.5)];
        [bezierPath addLineToPoint: CGPointMake(46.5, 211.5)];
        [bezierPath addLineToPoint: CGPointMake(46.5, 245.5)];
        [bezierPath closePath];
        [paths addObject:bezierPath];
    }
    
    TYHollowoutView *hollowoutView = [[TYHollowoutView alloc] initWithFrame:self.view.bounds];
    hollowoutView.fillColor        = [UIColor redColor];
    hollowoutView.paths            = paths;
    _hollowoutView = hollowoutView;
    [self.view addSubview:hollowoutView];
}


-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    [self.hollowoutView removeFromSuperview];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
