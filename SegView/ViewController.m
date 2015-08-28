//
//  ViewController.m
//  SegView
//
//  Created by 邓杰豪 on 15/8/28.
//  Copyright (c) 2015年 邓杰豪. All rights reserved.
//

#import "ViewController.h"
#import "PooSegView.h"

#define DEFAULT_FONT(s)     [UIFont fontWithName:@"HelveticaNeue-CondensedBlack" size:s]

@interface ViewController ()<PooSegViewDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    PooSegView *seg = [[PooSegView alloc] initWithFrame:CGRectMake(0, 100, self.view.frame.size.width, 40) titles:@[[NSString stringWithFormat:@"全部(%@)",@"10"],@"1星",@"2星",@"3星",@"4星",@"5星"] titleNormalColor:[UIColor redColor] titleSelectedColor:[UIColor lightGrayColor] titleFont:DEFAULT_FONT(14) setLine:NO lineColor:[UIColor clearColor] lineWidth:.0f];
    seg.delegate = self;
    [self.view addSubview:seg];
}

-(void)didSelectedSegmentAtIndex:(NSInteger)index
{
    NSLog(@"%ld",index);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
