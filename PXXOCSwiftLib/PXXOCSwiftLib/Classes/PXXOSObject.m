//
//  PXXOSObject.m
//  PXXOCSwiftLib
//
//  Created by wz on 2023/4/25.
//

#import "PXXOSObject.h"
#import <PXXOCSwiftLib/PXXOCSwiftLib-Swift.h>

@implementation PXXOSObject

+ (NSDictionary *)othersInfos
{
    [PXXOSUitls showTime];
    return @{
        @"PXXOSObject": @"0.1.0",
        @"sourceType": @"ObjC"
    };
}

@end
