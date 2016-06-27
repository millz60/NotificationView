//
//  NotificationView.m
//  NotificationView
//
//  Created by Matt Milner on 6/27/16.
//  Copyright © 2016 Matt Milner. All rights reserved.
//

#import "NotificationView.h"
#import "ViewController.h"

@implementation NotificationView
{
    
}


-(instancetype) initWithFrame:(CGRect)frame {
    
    self = [super initWithFrame:frame];
    [self setup];
    return self;
    
}

-(void) setup{
    
    UIView *notificationView = [[UIView alloc] init];
    notificationView.frame = CGRectMake(0, 0, super.frame.size.width, super.frame.size.height);
    notificationView.backgroundColor = [UIColor orangeColor];
    
    UIImageView *notifyBackground = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"notify.png"]];
    notifyBackground.frame = CGRectMake(0,0,notificationView.frame.size.width, notificationView.frame.size.height);
    
    
    
    UILabel *viewTitle = [[UILabel alloc] init];
    viewTitle.frame = CGRectMake((notificationView.frame.size.width)/2 - 75, (notificationView.frame.size.height)/2 - 75, 150, 150);
    viewTitle.text = @"Notification View";
    viewTitle.textAlignment = NSTextAlignmentCenter;
    viewTitle.textColor = [UIColor whiteColor];
    
    [notificationView addSubview:viewTitle];
    [notificationView addSubview:notifyBackground];
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
