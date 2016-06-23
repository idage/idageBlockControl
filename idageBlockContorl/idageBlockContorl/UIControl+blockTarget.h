//
//  UIControl+blockTarget.h
//  idageBlockButton
//
//  Created by 冯亮 on 16/6/23.
//  Copyright © 2016年 idage. All rights reserved.
//

#import <UIKit/UIKit.h>
typedef  void(^DGCompletionHandler)(void);

@interface UIControl (blockTarget)
/**
 *  按钮以block样式返回的触发方法
 *
 *  @param controlEvents UIControlEvents
 *  @param completion    响应的回调
 */
- (void)addActionforControlEvents:(UIControlEvents)controlEvents respond:(DGCompletionHandler)completion;

@end
