//
//  ViewController.m
//  LBTextFieldDemo
//
//  Created by 刘彬 on 2019/9/24.
//  Copyright © 2019 刘彬. All rights reserved.
//

#import "ViewController.h"
#import "LBReusableScrollView.h"
@interface ViewController ()<LBReusableScrollViewDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title = @"LBReusableScrollView";
    
    LBReusableScrollView *reusableScrollView = [[LBReusableScrollView alloc] initWithFrame:CGRectMake(0, 0, CGRectGetWidth(self.view.frame), 400)];
    reusableScrollView.pagingEnabled = YES;
    reusableScrollView.lb_delegate = self;
    [self.view addSubview:reusableScrollView];
}

#pragma mark LBReusableScrollViewDelegate
-(NSInteger)numberOfPagesInScrollView:(LBReusableScrollView *)scrollView{
    return 1000;
}

-(UIView *)scrollView:(LBReusableScrollView *)scrollView viewForPage:(NSUInteger)page{
    UIView *v = [[UIView alloc] initWithFrame:scrollView.bounds];
    if (page%2 == 0) {
        v.backgroundColor = [UIColor cyanColor];
    }else{
        v.backgroundColor = [UIColor magentaColor];
    }
    return v;
}

@end
