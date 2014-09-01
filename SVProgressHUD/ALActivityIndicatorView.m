//
//  Created by Dmitry Ivanenko on 17.07.14.
//  Copyright (c) 2014 Artox Lab. All rights reserved.
//

#import "ALActivityIndicatorView.h"


@interface ALActivityIndicatorView ()

@property (strong, nonatomic) UIImageView *iv;

@end


@implementation ALActivityIndicatorView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (!self) return nil;

    self.backgroundColor = [UIColor clearColor];

    return self;
}

- (void)startAnimating
{
    self.hidden = NO;
    [self.iv startAnimating];
}

- (void)stopAnimating
{
    self.hidden = YES;
    [self.iv stopAnimating];
}

- (UIImageView *)iv
{
    if (_iv) return _iv;

    _iv = [[UIImageView alloc] initWithFrame:self.bounds];
    _iv.animationImages = @[
                            [UIImage imageNamed:@"Preloader_2_00000"],
                            [UIImage imageNamed:@"Preloader_2_00001"],
                            [UIImage imageNamed:@"Preloader_2_00002"],
                            [UIImage imageNamed:@"Preloader_2_00003"],
                            [UIImage imageNamed:@"Preloader_2_00004"],
                            [UIImage imageNamed:@"Preloader_2_00005"],
                            [UIImage imageNamed:@"Preloader_2_00006"],
                            [UIImage imageNamed:@"Preloader_2_00007"],
                            [UIImage imageNamed:@"Preloader_2_00008"],
                            [UIImage imageNamed:@"Preloader_2_00009"],
                            [UIImage imageNamed:@"Preloader_2_00010"],
                            [UIImage imageNamed:@"Preloader_2_00011"],
                            [UIImage imageNamed:@"Preloader_2_00012"],
                            [UIImage imageNamed:@"Preloader_2_00013"],
                            [UIImage imageNamed:@"Preloader_2_00014"],
                            [UIImage imageNamed:@"Preloader_2_00015"],
                            [UIImage imageNamed:@"Preloader_2_00016"],
                            ];
    _iv.animationDuration = .7;
    [self addSubview:_iv];

    return _iv;
}

@end
