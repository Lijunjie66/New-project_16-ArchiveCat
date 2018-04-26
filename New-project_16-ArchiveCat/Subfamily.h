//
//  Subfamily.h
//  New-project_16-ArchiveCat
//
//  Created by Geraint on 2018/4/26.
//  Copyright © 2018年 kilolumen. All rights reserved.
//

#import "Family.h"


@interface Subfamily : Family // Subfamily类是Family类的子类

@property (readonly) NSString *genus;
@property (readonly) NSString *species;

// 初始化Subfamily对象
-(id)initWithSpecies:(NSString *)species
               genus:(NSString *)genus
              family:(NSString *)family
               order:(NSString *)order;


@end
