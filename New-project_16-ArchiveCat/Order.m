//
//  Order.m
//  New-project_16-ArchiveCat
//
//  Created by Geraint on 2018/4/25.
//  Copyright © 2018年 kilolumen. All rights reserved.
//

#import "Order.h"

@implementation Order

// 初始化，并将输入参数order的值赋予支持order属性的实例变量
- (id) initWithOrder:(NSString *)order {
    if (self = [super init]) {
        _order = order;
    }
    return self;
}

// initWithCoder: 方法是有协议NSCoding声明的，可以使用 【解码】Order实例的归档状态初始化对象。
- (id)initWithCoder:(NSCoder *)coder {
    if (self = [super init]) {
        
        _order = [coder decodeObjectForKey:@"ORDER_KEY"];
    }
    return self;
}

//归档(序列化)
//对Order对象进行归档时,此方法执行
//对Order中想要进行归档的所有属性,进行序列化操作
- (void) encodeWithCoder:(NSCoder *)aCoder {
    [aCoder encodeObject:self.order forKey:@"ORDER_KEY"];
}

// 向order属性返回了【文本字符串】类型的列表值
- (NSString *) description {
    return [NSString stringWithFormat:@"Order:%@",self.order];
}

@end
