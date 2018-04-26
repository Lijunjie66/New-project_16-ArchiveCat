//
//  Archiver.m
//  New-project_16-ArchiveCat
//
//  Created by Geraint on 2018/4/26.
//  Copyright © 2018年 kilolumen. All rights reserved.
//

#import "Archiver.h"

@implementation Archiver

- (id) init {
    if (self = [super init]) {
        _path = NSTemporaryDirectory(); // 设置了path属性的值
    }
    return self;
}

// 该方法  编码了一个对象图并将其写入文件。
// 该方法  通过在输入文本字符的头部添加path属性，创建文件路径。然后为归档对象创建一个可变数据对象，最后创建了一个执行归档操作的NSKeyArchver实例
- (BOOL) encodeArchive:(id)data toFile:(NSString *)file {
    NSString *archivePath = [self.path stringByAppendingString:file];
    
    // 为了编码数据，创建一个归档对象
    NSMutableData *mdata = [[NSMutableData alloc] init];
    NSKeyedArchiver *archiver = [[NSKeyedArchiver alloc]
                                 initForWritingWithMutableData:mdata];
    
    // 编码 将简单的字符串作为键的数据
    [archiver encodeObject:data forKey:@"FELTNE_KEY"];
    [archiver finishEncoding];
    
    // 将已编码的数据写入文件，返回写入操作的状态
    BOOL result = [mdata writeToFile:archivePath atomically:YES];
    return result;
}

// 解码  了从文件读取的归档，返回已初始化的对象图
- (id)decodeArchiveFromFile:(NSString *)file {
    // 获取  归档文件的路径
    NSString *archivePath = [self.path stringByAppendingString:file];
    
    // 为了  解码数据，创建解码对象
    NSData *data = [[NSMutableData alloc] initWithContentsOfFile:archivePath];
    NSKeyedUnarchiver *unarchiver = [[NSKeyedUnarchiver alloc] initForReadingWithData:data];
    
    // 解码  将简单字符串作为键（键值对 中的键）的数据
    id result = [unarchiver decodeObjectForKey:@"FELINE_KEY"];
    [unarchiver finishDecoding];
    
    // 返回 已解码的数据
    return result;
}



@end
