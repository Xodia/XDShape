//
//  SCViewController.m
//  XDTest
//
//  Created by Morgan Collino on 4/15/14.
//  Copyright (c) 2014 Morgan Collino. All rights reserved.
//

#import "SCViewController.h"
#import "UIImageView_XDShape.h"
#import "UIButton_XDShape.h"

@interface SCViewController ()
@property (nonatomic, retain) IBOutlet UIImageView *imageViewRound;
@property (nonatomic, retain) IBOutlet UIImageView *imageViewRoundWithBorder;

@property (nonatomic, retain) IBOutlet UIImageView *imageViewSquare;
@property (nonatomic, retain) IBOutlet UIImageView *imageViewSquareWithBorder;
@property (nonatomic, retain) IBOutlet UIButton *buttonRound;
@property (nonatomic, retain) IBOutlet UIButton *buttonSquare;
@end

@implementation SCViewController

@synthesize imageViewRound, imageViewSquare, buttonRound, buttonSquare, imageViewRoundWithBorder, imageViewSquareWithBorder;

- (void)viewDidLoad
{
    [super viewDidLoad];
    UIImage* image = [UIImage imageNamed: @"default.png"];
    
    // ImagesViews
    imageViewRound.image = image;
    [imageViewRound toRoundImageView];
    imageViewSquare.image = image;
    [imageViewSquare toSquareImageView];
    
    imageViewRoundWithBorder.image = image;
    [imageViewRoundWithBorder toRoundImageViewWithBorderSize: 1 color: [UIColor redColor]];
    imageViewSquareWithBorder.image = image;
    [imageViewSquareWithBorder toSquareImageViewWithBorderSize:2  color: [UIColor blackColor]];

    // Buttons
    [buttonRound setBackgroundImage: image forState:UIControlStateNormal];
    [buttonRound toRoundImageViewWithBorderSize: 1 color: [UIColor orangeColor]];
    
    [buttonSquare setBackgroundImage: image forState:UIControlStateNormal];
    [buttonSquare toSquareImageViewWithBorderSize: 1 color: [UIColor redColor]];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
    imageViewSquare = nil;
    imageViewRound = nil;
}

@end
