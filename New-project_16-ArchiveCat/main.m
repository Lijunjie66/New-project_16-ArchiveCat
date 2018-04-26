//
//  main.m
//  New-project_16-ArchiveCat
//
//  Created by Geraint on 2018/4/25.
//  Copyright © 2018年 kilolumen. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"
#import "Archiver.h"
#import "Subfamily.h"


int main(int argc, char * argv[]) {
    @autoreleasepool {
        
        // 为了编码、解码对象图，创建归档对象
        Archiver *archiver = [[Archiver alloc] init];
        
        // 创建一个对象图，并将之归档到文件中
        id animal = [[Subfamily alloc] initWithSpecies:@"Lion"
                                                 genus:@"Panther"
                                                family:@"Felid"
                                                 order:@"Carnivore"];
        NSLog(@"\n%@", [animal description]);
        NSString *file = @"data.archiver";
        
        // 显示结果
        if ([archiver encodeArchive:animal toFile:file]) {
            NSLog(@"You encoded an archive to file %@", [[archiver path] stringByAppendingString:file]);
        }
        
        // 通过对象图的归档和描述记录，解码对象图
        id data = [archiver decodeArchiveFromFile:file];
        if ([archiver decodeArchiveFromFile:file]) {
            NSLog(@"You decoded an aechive from file %@\n%@", [[archiver path] stringByAppendingString:file], [data description]);
        }
        
        
        return UIApplicationMain(argc, argv, nil, NSStringFromClass([AppDelegate class]));
    }
}
