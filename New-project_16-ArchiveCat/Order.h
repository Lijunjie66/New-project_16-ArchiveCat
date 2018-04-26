//
//  Order.h
//  New-project_16-ArchiveCat
//
//  Created by Geraint on 2018/4/25.
//  Copyright © 2018年 kilolumen. All rights reserved.
//

#import <Foundation/Foundation.h>

// Order类遵守 协议NSCoding ，所以支持归档操作
@interface Order : NSObject <NSCoding>

@property (readonly) NSString *order;

// 初始化、解码
- (id) initWithOrder:(NSString *)order;

@end
