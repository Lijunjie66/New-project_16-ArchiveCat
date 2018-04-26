//
//  Subfamily.m
//  New-project_16-ArchiveCat
//
//  Created by Geraint on 2018/4/26.
//  Copyright © 2018年 kilolumen. All rights reserved.
//

#import "Subfamily.h"

@implementation Subfamily

- (id)initWithSpecies:(NSString *)species
                genus:(NSString *)genus
               family:(NSString *)family
                order:(NSString *)order {
    if (self = [super initWithFamily:family order:order]) {
        
        // ***   将输入参数species和genus的值赋予支持Subfamily类属性的实例变量
        _species = species;
        _genus = genus;
    }
    return self;
}

// 解码
- (id)initWithCoder:(NSCoder *)aDecoder {
    if (self = [super initWithCoder:aDecoder]) {
        _species = [aDecoder decodeObjectForKey:@"SPECIES_KEY"];
        _genus = [aDecoder decodeObjectForKey:@"GENUS_KEY"];
    }
    return self;
}

// 归档
-(void)encodeWithCoder:(NSCoder *)aCoder {
    [super encodeWithCoder:aCoder];
    [aCoder encodeObject:self.species forKey:@"SPECIES_KEY"];
    [aCoder encodeObject:self.genus forKey:@"GENUS_KEY"];
}

// 返回文本字符串 本类和其父类的描述值
- (NSString *)description {
    return [NSString stringWithFormat:@"Animal - Species:%@ Genus:%@, %@", self.species, self.genus, [super description]];
}

@end
