//
//  Archiver.h
//  New-project_16-ArchiveCat
//
//  Created by Geraint on 2018/4/26.
//  Copyright © 2018年 kilolumen. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Archiver : NSObject

@property (readwrite) NSString *path; // 该属性定义了 归档文件的路径

// 将归档 编码并写入文件
- (BOOL) encodeArchive:(id)data toFile:(NSString *)file;
// 读取文件中的归档并进行解码
- (id) decodeArchiveFromFile:(NSString *)file;

@end
