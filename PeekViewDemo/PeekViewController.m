//
//  PeekViewController.m
//  PeekViewDemo
//
//  Created by Franks, Kent on 3/23/16.
//  Copyright © 2016 Franks, Kent. All rights reserved.
//

#import "PeekViewController.h"

@interface PeekViewController ()

@end

@implementation PeekViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // get size of view dynamically
    CGRect screenRect = [[UIScreen mainScreen] bounds];
    CGFloat screenWidth = screenRect.size.width;
    CGFloat screenHeight = screenRect.size.height;
    
    // load background image
    UIImageView *backgroundImage =[[UIImageView alloc] initWithFrame:CGRectMake(0, 0, screenWidth, screenHeight)];
    backgroundImage.image=[UIImage imageNamed:@"backgroundImage.png"];
    [self.view addSubview:backgroundImage];
    
    // load scrollView
    UIScrollView *scrollview = [[UIScrollView alloc]initWithFrame:CGRectMake(0, screenHeight/2, screenWidth, screenHeight)];
    scrollview.showsVerticalScrollIndicator = NO;
    scrollview.showsHorizontalScrollIndicator = NO;
    scrollview.scrollEnabled = YES;
    scrollview.userInteractionEnabled = YES;
    [self.view addSubview:scrollview];
    scrollview.contentSize = CGSizeMake(screenWidth * 2, screenHeight);
    
    // Create textFields
    CGRect usernameRect = CGRectMake(scrollview.frame.size.width/2 + (scrollview.frame.size.width/2)/2, 0.0, 100.0, 30.0);
    UITextField *usernameTextField = [[UITextField alloc] initWithFrame:usernameRect];
    
    //    CGRect usernameRect = CGRectMake(scrollview.frame.size.width/2 + (scrollview.frame.size.width/2)/2, 0.0, 100.0, 30.0);
    //    UITextField *usernameTextField = [[UITextField alloc] initWithFrame:usernameRect];
    //    UIView *usernameSubView = [[UIView alloc] initWithFrame:usernameRect];
    //    [usernameSubView addSubview:usernameTextField];
    
    //    CGRect passwordRect = CGRectMake(scrollview.frame.size.width/2 +  (scrollview.frame.size.width/2)/2, 50.0, 100.0, 30.0);
    //    UITextField *passwordTextField = [[UITextField alloc] initWithFrame:passwordRect];
    //    UIView *passwordSubView = [[UIView alloc] initWithFrame:passwordRect];
    //    [passwordSubView addSubview:passwordTextField];
    
    // Create label
    CGRect labelRect = CGRectMake(scrollview.frame.size.width/2 + (scrollview.frame.size.width/2)/2, 0.0, 100.0, 30.0);
    UILabel *dataLabel = [[UILabel alloc]initWithFrame:labelRect];
    dataLabel.textColor = [UIColor whiteColor];
    dataLabel.text = @"$10,000";
    
    // Create login subview
    CGRect loginRect = CGRectMake(0.0, 0.0, screenWidth, screenHeight);
    UIView *loginSubView = [[UIView alloc] initWithFrame:loginRect];
    //    [loginSubView addSubview:usernameSubView];
    //    [loginSubView addSubview:passwordSubView];
    [loginSubView addSubview:dataLabel];
    
    // Create data subview
    //    CGRect dataRect = CGRectMake(0.0, 0.0, screenWidth, screenHeight);
    //    UIView *dataSubView = [[UIView alloc] initWithFrame:dataRect];
    //    [dataSubView addSubview:dataLabel];
    
    // add subviews to scrollView
    [scrollview addSubview:loginSubView];
    //    [scrollview addSubview:dataSubView];
    
}

@end
