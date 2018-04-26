//
//  Family.h
//  New-project_16-ArchiveCat
//
//  Created by Geraint on 2018/4/26.
//  Copyright © 2018年 kilolumen. All rights reserved.
//

#import "Order.h"

// Family类是Order类的子类，所以他也采用 NSCoding协议
@interface Family : Order

// 只读属性
@property (readonly) NSString *family;

// 初始化Family对象，将family和order属性设置了输入的参数值
- (id)initWithFamily:(NSString *)family order:(NSString *)order;

@end
