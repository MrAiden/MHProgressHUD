//
//  MBProgressHUD+AJExtension.h
//  TestAPNs
//
//  Created by Mortar on 2019/4/3.
//  Copyright © 2019 Yan. All rights reserved.
//

#import <MBProgressHUD/MBProgressHUD.h>

NS_ASSUME_NONNULL_BEGIN

static NSTimeInterval kAJMBProgressHUDShowTime = 2.5f;

@interface MBProgressHUD (AJExtension)

//MARK: - 在指定 view 上显示 view为空在 window 显示
// 纯文字
+ (void)showMessage:(NSString *)message toView:(UIView * _Nullable)view;
// 成功
+ (void)showSuccess:(NSString * _Nullable)success toView:(UIView * _Nullable)view;
// 错误
+ (void)showError:(NSString * _Nullable)error toView:(UIView * _Nullable)view;
// 警告
+ (void)showWarning:(NSString * _Nullable)warning toView:(UIView * _Nullable)view;
// 自定义图片
+ (void)showMessage:(NSString * _Nullable)message imageName:(NSString *)imageName toView:(UIView * _Nullable)view;
// 加载中
+ (void)showActivityMessage:(NSString * _Nullable)message view:(UIView * _Nullable)view;
// 进度
+ (MBProgressHUD *)showProgressMessage:(NSString * _Nullable)message toView:(UIView * _Nullable)view;

//MARK: - 移除 Hud
+ (void)dismissHUDForView:(UIView * _Nullable)view;

@end

NS_ASSUME_NONNULL_END
