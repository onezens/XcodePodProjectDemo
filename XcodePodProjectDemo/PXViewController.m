//
//  PXViewController.m
//  XcodePodProjectDemo
//
//  Created by onezens on 03/29/2023.
//  Copyright (c) 2023 onezens. All rights reserved.
//

#import "PXViewController.h"
#import <PXXOCLib/PXXUtils.h>
#import "XcodePodProjectDemo_Example-Swift.h"

/**
 
 1、swift 用宏
 2、用c
 3、自定义modulemap，访问OC
 
 */

@import PXXOCSwiftLib;
@interface PXViewController ()

@end

@implementation PXViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    NSLog(@"%s", __func__);
	// Do any additional setup after loading the view, typically from a nib.
    [PXXUtils showSwiftTime];
    NSLog(@"%@", [PXXUtils appInfo]);
    [[FileUtils new] logDate];
    NSLog(@"%@", [PXXOSUitls appInfo]);
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
