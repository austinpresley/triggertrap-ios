//
//  MPGNotification.m
//  ShutterBridge
//
//  Created by Alex Taffe on 5/30/18.
//  Copyright © 2018 ShutterBridge Limited. All rights reserved.
//

#import "MPGNotification.h"

@implementation MPGNotification(Restyle)

-(void)restyleNotification{
    UILabel *title = [self valueForKey:@"titleLabel"];
    title.textAlignment = NSTextAlignmentCenter;
    title.font = [UIFont systemFontOfSize:18];
}

@end
