//
//  UIControl+blockTarget.m
//  idageBlockButton
//
//  Created by 冯亮 on 16/6/23.
//  Copyright © 2016年 idage. All rights reserved.
//

#import "UIControl+blockTarget.h"
#import <objc/runtime.h>


static void *BuClickKey = @"BuClickKey";

@implementation UIControl (blockTarget)
- (void)addActionforControlEvents:(UIControlEvents)controlEvents respond:(DGCompletionHandler)completion{
    
    [self addTarget:self action:@selector(didClickBU) forControlEvents:controlEvents];
    
    void (^block)(void) = ^{
        completion();
    };
    objc_setAssociatedObject(self, BuClickKey, block, OBJC_ASSOCIATION_COPY);
    
}

-(void)didClickBU{
    void (^block)(void) = objc_getAssociatedObject(self, BuClickKey);
    block();
}

@end
