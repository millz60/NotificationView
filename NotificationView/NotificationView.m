//
//  NotificationView.m
//  NotificationView
//
//  Created by Matt Milner on 6/27/16.
//  Copyright © 2016 Matt Milner. All rights reserved.
//

#import "NotificationView.h"

@implementation NotificationView
{
    
}


-(instancetype) init {
    
    self = [super init];
    [self setup];
    return self;
    
}

-(void) setup{
    
    UIView *notificationView = [[UIView alloc] init];
    notificationView.frame = CGRectMake(0, 0, 250, 250);
    notificationView.backgroundColor = [UIColor orangeColor];
    
    
    UILabel *viewTitle = [[UILabel alloc] initWithFrame:CGRectMake((250/2)-100, (250/2)-15, 200, 30)];
    viewTitle.text = @"Notification View";
    viewTitle.textAlignment = NSTextAlignmentCenter;
    viewTitle.textColor = [UIColor whiteColor];
    
    [notificationView addSubview:viewTitle];
    [self addSubview:notificationView];
    
}


/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
