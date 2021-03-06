//
//  ViewController.m
//  NotificationView
//
//  Created by Matt Milner on 6/27/16.
//  Copyright © 2016 Matt Milner. All rights reserved.
//

#import "ViewController.h"
#import "NotificationView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    screenHeight = self.view.frame.size.height;
    screenWidth = self.view.frame.size.width;
    newView = [[NotificationView alloc] initWithFrame:CGRectMake(0, 0, screenWidth, screenHeight)];
    
    [self.view addSubview:newView];
    
    UISwipeGestureRecognizer *downSwipeGestureRecognizer = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(downSwipe:)];
    downSwipeGestureRecognizer.direction = UISwipeGestureRecognizerDirectionDown;
    
    UISwipeGestureRecognizer *upSwipeGestureRecognizer = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(upSwipe:)];
    upSwipeGestureRecognizer.direction = UISwipeGestureRecognizerDirectionUp;
    
    [self.view addGestureRecognizer:downSwipeGestureRecognizer];
    [self.view addGestureRecognizer:upSwipeGestureRecognizer];
    
    
}


-(void) upSwipe: (UIGestureRecognizer *) recognizer{
    [UIView animateWithDuration:1.0 animations:^{ newView.frame = CGRectMake(0, -(screenHeight), screenWidth, screenHeight); }];
}

-(void) downSwipe: (UIGestureRecognizer *) recognizer{
    [UIView animateWithDuration:1.0 animations:^{ newView.frame = CGRectMake(0, 0, screenWidth, screenHeight); }];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
}

@end
