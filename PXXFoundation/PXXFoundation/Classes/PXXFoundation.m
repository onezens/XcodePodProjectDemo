//
//  PXXFoundation.m
//  Alamofire
//
//  Created by wz on 2023/3/29.
//

#import "PXXFoundation.h"
//#import <Alamofire/Alamofire-Swift.h>
//#import <Alamofire/Alamofire-umbrella.h>

@implementation PXXFoundation

+ (NSString *)appVersion
{
    return [[[NSBundle mainBundle] infoDictionary] valueForKey:@"CFBundleShortVersionString"];
}


@end
