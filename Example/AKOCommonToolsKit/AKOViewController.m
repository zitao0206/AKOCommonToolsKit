//
//  AKOViewController.m
//  AKOCommonToolsKit
//
//  Created by lizitao on 10/29/2022.
//  Copyright (c) 2022 lizitao. All rights reserved.
//

#import "AKOViewController.h"
#import "AKOCommonToolsKit_Example-Swift.h"

@interface AKOViewController ()

@end

@implementation AKOViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
     
    AKOSwiftObject *obj = [[AKOSwiftObject alloc]init];
    [obj testCase];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
