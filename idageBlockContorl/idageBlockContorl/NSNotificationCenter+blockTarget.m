//
//  NSNotificationCenter+blockTarget.m
//  idageBlockButton
//
//  Created by 冯亮 on 16/6/23.
//  Copyright © 2016年 idage. All rights reserved.
//

#import "NSNotificationCenter+blockTarget.h"

#import <objc/runtime.h>

static void *BuNotifiKey = @"BuNotifiKey";
@implementation NSNotificationCenter (blockTarget)

- (void)addObserver:(id)observer  name:( NSString *)aName object:(id)anObject respond:(DGNOCompletionHandler)completion{
   
    [self addObserver:observer selector:@selector(selectNotifiton) name:aName object:observer];
    void (^block)(void) = ^{
        completion();
    };
    objc_setAssociatedObject(self, BuNotifiKey, block, OBJC_ASSOCIATION_COPY);
    
}

-(void)selectNotifiton{
    void (^block)(void) = objc_getAssociatedObject(self, BuNotifiKey);
    block();
}
@end
