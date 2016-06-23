//
//  NSNotificationCenter+blockTarget.h
//  idageBlockButton
//
//  Created by 冯亮 on 16/6/23.
//  Copyright © 2016年 idage. All rights reserved.
//

#import <Foundation/Foundation.h>
typedef  void(^DGNOCompletionHandler)(void);

@interface NSNotificationCenter (blockTarget)


- (void)addObserver:(id)observer  name:( NSString *)aName object:(id)anObject respond:(DGNOCompletionHandler)completion;


@end
