//
//  ViewController.m
//  BTSMRT
//
//  Created by Worapong Kaewtong on 3/17/55 BE.
//  Copyright (c) 2555 BE upic.me. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize fullImageView;
@synthesize scrollView;
- (void)viewDidLoad
{
    
    [super viewDidLoad];
    scrollView = [[UIScrollView alloc]initWithFrame:[UIScreen mainScreen].applicationFrame];
    UIImage *image = [UIImage imageNamed:@"BangkokBTSMRT"];
    fullImageView = [[UIImageView alloc]initWithImage:image];
    fullImageView.autoresizingMask = UIViewAutoresizingFlexibleHeight | UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleTopMargin | UIViewAutoresizingFlexibleBottomMargin | UIViewAutoresizingFlexibleTopMargin;
    fullImageView.contentMode =  UIViewContentModeScaleAspectFit;
    CGRect frame = [[UIScreen mainScreen]bounds];
    fullImageView.frame = frame;
    scrollView.autoresizingMask = UIViewAutoresizingFlexibleHeight | UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleTopMargin | UIViewAutoresizingFlexibleBottomMargin;
    
    scrollView.maximumZoomScale = 6.0;
    scrollView.minimumZoomScale = 1;
    scrollView.clipsToBounds = YES;
    scrollView.delegate = self;
    scrollView.showsHorizontalScrollIndicator = NO;
    scrollView.showsVerticalScrollIndicator = NO;
    [scrollView addSubview:fullImageView];
    [scrollView setBackgroundColor:[UIColor whiteColor]];
    self.view = scrollView;

	// Do any additional setup after loading the view, typically from a nib.
}
-(UIView *)viewForZoomingInScrollView:(UIScrollView *)scrollView
{
    return fullImageView;
}
- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

@end
