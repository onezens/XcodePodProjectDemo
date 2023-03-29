//
//  PXXUtils.m
//  PXXOCLib
//
//  Created by wz on 2023/3/29.
//


#import "PXXUtils.h"
//#import <PXXSwiftLib/PXXSwiftLib-Swift.h>
@import PXXSwiftLib;

@implementation PXXUtils

+ (void)logTime
{
    NSLog(@"%@", [NSDate date]);
}

+ (NSDictionary<NSString *,NSString *> *)appInfo
{
    NSDictionary *info = [PXXSUitls appInfo];
    return info;
}

+ (void)showSwiftTime
{
    [PXXSUitls showTime];
}
@end
