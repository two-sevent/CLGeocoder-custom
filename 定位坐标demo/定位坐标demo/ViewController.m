//
//  ViewController.m
//  定位坐标demo
//
//  Created by qiuyaoyao on 15/11/4.
//  Copyright © 2015年 qiuyaoyao. All rights reserved.
//

#import "ViewController.h"
#import "CLGeocoder+custom.h"

@interface ViewController ()

@property(nonatomic,strong)CLGeocoder *geocoder;

@end

@implementation ViewController

-(CLGeocoder *)geocoder
{
     if (_geocoder==nil) {
             _geocoder=[[CLGeocoder alloc]init];
       }
     return _geocoder;
}



- (void)viewDidLoad {
    [super viewDidLoad];
    
    CLLocation *location = [[CLLocation alloc] initWithLatitude:39.992121125583 longitude:116.32371544028];
    
    [self.geocoder reverseGeocodeWithCLLocation:location Block:^(BOOL isError, BOOL isInCHINA) {
        NSLog(@"[isError %d, isInCHINA %d]",isError, isInCHINA);
    }];
 
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
