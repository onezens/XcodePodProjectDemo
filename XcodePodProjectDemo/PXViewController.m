//
//  PXViewController.m
//  XcodePodProjectDemo
//
//  Created by onezens on 03/29/2023.
//  Copyright (c) 2023 onezens. All rights reserved.
//

#import "PXViewController.h"
#import <PXXOCLib/PXXUtils.h>

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
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
