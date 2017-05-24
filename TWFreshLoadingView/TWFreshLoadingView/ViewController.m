//
//  ViewController.m
//  TWFreshLoadingView
//
//  Created by luomeng on 2017/5/24.
//  Copyright © 2017年 XRY. All rights reserved.
//

#import "ViewController.h"
#import "FreshLoadingView.h"


@interface ViewController ()
{
    FreshLoadingView *_loadingView;
}


@end

@implementation ViewController


#pragma mark -
#pragma mark - lifeCycle
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark -
#pragma mark - public
- (IBAction)_start:(id)sender {
    
    [self startLoading];
    [self performSelector:@selector(stopLoading) withObject:nil afterDelay:3];
}
- (IBAction)_stop:(id)sender {
    
    [self stopLoading];
}


#pragma mark -
#pragma mark - Loading
- (void)startLoading{
    
    if (!_loadingView) {
        
        _loadingView = [[FreshLoadingView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height)];
    }
    
    [_loadingView startAnimating];
    [self.view addSubview:_loadingView];
    [self.view bringSubviewToFront:_loadingView];
    
}
- (void)stopLoading{
    
    [_loadingView stopAnimating];
    [_loadingView removeFromSuperview];
    _loadingView = nil;
}


@end







