//
//  FreshLoadingView.m
//  TourWay
//
//  Created by luomeng on 15/11/18.
//  Copyright © 2015年 OneThousandandOneNights. All rights reserved.
//

#import "FreshLoadingView.h"

@implementation FreshLoadingView

- (instancetype)initWithFrame:(CGRect)frame{

    if (self = [super initWithFrame:frame]) {
       
        self.frame = frame;
        UIView *view = [[UIView alloc] initWithFrame:CGRectMake(0, self.frame.origin.y, self.frame.size.width, self.frame.size.height)];
        view.backgroundColor = [UIColor blackColor];
        view.alpha = 0.3;
        _backView=view;
        [self addSubview:view];
        
        UIView *bg = [[UIView alloc] initWithFrame:CGRectMake((self.frame.size.width - 80) / 2.0, (self.frame.size.height - 80) / 2.0, 80, 80)];
        bg.clipsToBounds = YES;
        bg.layer.cornerRadius = 10;
        bg.backgroundColor = [UIColor whiteColor];
        bg.alpha = 0.7;
        _bgview = bg;
        _imageView = [[UIImageView alloc] initWithFrame:CGRectMake((bg.frame.size.width - 79) / 2.0, (bg.frame.size.height - 79) / 2.0, 79, 79)];
        _imageView.image = [UIImage imageNamed:@"TWFreshLoading1.png"];
        _currentIndex = 1;
        [bg addSubview:_imageView];
        
        [self addSubview:bg];
    }
    return self;
}

-(void)startAnimating{
    if (!_timer) {
        _timer = [NSTimer timerWithTimeInterval:2.0 / 53.0 target:self selector:@selector(change) userInfo:nil repeats:YES];
        [[NSRunLoop currentRunLoop] addTimer:_timer forMode:NSRunLoopCommonModes];
    }
    UIWindow *window = [UIApplication sharedApplication].keyWindow;
    CGRect windowRect = window.frame;
    self.frame = windowRect;
    _backView.frame = windowRect;
    self.center = window.center;
    _bgview.frame = CGRectMake(self.center.x-40, self.center.y-40-64, 80, 80);
}
-(void)stopAnimating{
    
    if (_timer) {
        [_timer invalidate];
        _timer = nil;
    }
    if ([self superview]) {
        [self removeFromSuperview];
    }
}

- (void)change{
    _imageView.image = [UIImage imageNamed:[NSString stringWithFormat:@"TWFreshLoading%d.png", _currentIndex]];
    _currentIndex = _currentIndex + 1;
    if (_currentIndex > 52) {
        _currentIndex = 1;
    }
}


@end










