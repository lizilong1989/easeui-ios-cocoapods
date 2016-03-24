//
//  NSObject+EaseMob.m
//  ChatDemo-UI3.0
//
//  Created by dhc on 15/6/26.
//  Copyright (c) 2015年 easemob.com. All rights reserved.
//

#import "NSObject+EaseMob.h"

#import "EaseMob.h"

@interface NSObject ()<IChatManagerDelegate>

@end

@implementation NSObject (EaseMob)

- (void)registerEaseMobLiteNotification
{
    [[EaseMob sharedInstance].chatManager removeDelegate:self];
    [[EaseMob sharedInstance].chatManager addDelegate:self delegateQueue:nil];
}

- (void)unregisterEaseMobLiteNotification
{
    [[EaseMob sharedInstance].chatManager removeDelegate:self];
}

- (void)registerEaseMobNotification
{
    [[EaseMob sharedInstance].chatManager removeDelegate:self];
    [[EaseMob sharedInstance].chatManager addDelegate:self delegateQueue:nil];
    
#if ENABLE_CALL
    [[EaseMob sharedInstance].callManager removeDelegate:self];
    [[EaseMob sharedInstance].callManager addDelegate:self delegateQueue:nil];
#endif
}

- (void)unregisterEaseMobNotification
{
    [[EaseMob sharedInstance].chatManager removeDelegate:self];
#if ENABLE_CALL
    [[EaseMob sharedInstance].callManager removeDelegate:self];
#endif
}

@end
