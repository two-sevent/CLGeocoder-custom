//
//  CLGeocoder+custom.h
//  定位坐标demo
//
//  Created by qiuyaoyao on 15/11/4.
//  Copyright © 2015年 qiuyaoyao. All rights reserved.
//

#import <CoreLocation/CoreLocation.h>

@interface CLGeocoder (custom)


/**
 *  反编译GPS坐标点 判断坐标点位置是否在中国境内
 *
 *  @param location GPS坐标点
 *  @param block    isError 是否出错 /  isINCHINA 是否在中国境内
 */
- (void)reverseGeocodeWithCLLocation:(CLLocation *)location Block:(void (^)(BOOL isError, BOOL isInCHINA))block;

@end
