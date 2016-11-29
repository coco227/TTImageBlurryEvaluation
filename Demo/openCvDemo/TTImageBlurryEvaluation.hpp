//
//  TTImageBlurryEvaluation.h
//  openCvDemo
//
//  Created by Zhangcoco on 16/11/29.
//  Copyright © 2016年 tao. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import <opencv2/opencv.hpp>

@interface OpenCVExtension : NSObject

/**
 判断图片是否模糊
 */
+ (BOOL)whetherTheImageBlurry:(UIImage*)image;

/**
 UIImage转化成Mat
 */
+ (cv::Mat)cvMatFromUIImage:(UIImage *)image;

/**
 Mat转化成UIImage
 */
+ (UIImage *)UIImageFromCVMat:(cv::Mat)cvMat;

@end
