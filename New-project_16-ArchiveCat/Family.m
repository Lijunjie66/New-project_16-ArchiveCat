//
//  Family.m
//  New-project_16-ArchiveCat
//
//  Created by Geraint on 2018/4/26.
//  Copyright © 2018年 kilolumen. All rights reserved.
//

#import "Family.h"

@implementation Family

- (id)initWithFamily:(NSString *)family order:(NSString *)order {
    
    // 调用了 父类的initWithOrder: 方法，初始化了父类状态，然后 将输入参数family的值赋予支持family属性的实例变量
    if (self = [super initWithOrder:order]) {  // self = [super initWithOrder:order] 在这类情况下，父类状态（order属性）被初始化了。
        
        _family = family;  // ***   将输入参数family的值赋予支持family属性的实例变量
    }
    return self;
}

// 解码
// Family类的状态（属性和实例变量）被解码和初始化
- (id)initWithCoder:(NSCoder *)aDecoder {
    if (self = [super initWithCoder:aDecoder]) {
        _family = [aDecoder decodeObjectForKey:@"FAMILY_KEY"];
    }
    return self;
}

// 归档
//对Family类中想要进行归档的所有属性,进行序列化操作
- (void)encodeWithCoder:(NSCoder *)aCoder {
    [super encodeWithCoder:aCoder];
    [aCoder encodeObject:self.family forKey:@"FAMILY_KEY"];
}

// 返回由 family属性和父类描述值 构成的文本字符串
- (NSString *)description {
    return [NSString stringWithFormat:@"Family: %@, %@", self.family, [super description]];
}

@end
