//
//  MBProgressHUD+AJExtension.m
//  TestAPNs
//
//  Created by Mortar on 2019/4/3.
//  Copyright © 2019 Yan. All rights reserved.
//

#import "MBProgressHUD+AJExtension.h"

@implementation MBProgressHUD (AJExtension)

+ (void)showMessage:(NSString *)message iconName:(NSString *)iconName toView:(UIView *)view {
    if (view == nil) {
        view = [[UIApplication sharedApplication].windows lastObject];
    }
    MBProgressHUD *hud = [MBProgressHUD showHUDAddedTo:view animated:YES];
    hud.margin = 15.f;
    hud.label.text = message;
    hud.label.font = [UIFont boldSystemFontOfSize:15.f];
    hud.contentColor = [UIColor whiteColor];
    hud.bezelView.backgroundColor = [UIColor blackColor];
    // 判断是否显示图片
    if (iconName == nil) {
        hud.mode = MBProgressHUDModeText;
    } else {
        UIImage *image = [UIImage imageNamed:[NSString stringWithFormat:@"MBProgressHUD.bundle/%@", iconName]];
        image = image == nil ? [UIImage imageNamed:iconName] : image;
        hud.customView = [[UIImageView alloc] initWithImage:image];
        hud.mode = MBProgressHUDModeCustomView;
    }
    hud.removeFromSuperViewOnHide = YES;
    [hud hideAnimated:YES afterDelay:kAJMBProgressHUDShowTime];
}

//MARK: - 在指定 view 上显示
// 纯文字
+ (void)showMessage:(NSString *)message toView:(UIView *)view {
    [self showMessage:message iconName:nil toView:view];
}

// 成功
+ (void)showSuccess:(NSString *)success toView:(UIView *)view {
    [self showMessage:success iconName:@"success.png" toView:view];
}

// 错误
+ (void)showError:(NSString *)error toView:(UIView *)view {
    [self showMessage:error iconName:@"error.png" toView:view];
}

// 警告
+ (void)showWarning:(NSString *)warning toView:(UIView *)view {
    [self showMessage:warning iconName:@"warn.png" toView:view];
}

// 自定义图片
+ (void)showMessage:(NSString *)message imageName:(NSString *)imageName toView:(UIView *)view {
    [self showMessage:message iconName:imageName toView:view];
}

// 加载中
+ (void)showActivityMessage:(NSString *)message view:(UIView *)view {
    if (view == nil) {
        view = [[UIApplication sharedApplication].windows lastObject];
    }
    MBProgressHUD *hud = [MBProgressHUD showHUDAddedTo:view animated:YES];
    hud.margin = 15.f;
    hud.label.text = message;
    hud.label.font = [UIFont boldSystemFontOfSize:15.f];
    hud.contentColor = [UIColor whiteColor];
    hud.bezelView.backgroundColor = [UIColor blackColor];
    hud.mode = MBProgressHUDModeIndeterminate;
    hud.removeFromSuperViewOnHide = YES;
}

// 进度
+ (MBProgressHUD *)showProgressMessage:(NSString *)message toView:(UIView *)view {
    if (view == nil) {
        view = [[UIApplication sharedApplication].windows lastObject];
    }
    MBProgressHUD *hud = [MBProgressHUD showHUDAddedTo:view animated:YES];
    hud.margin = 15.f;
    hud.label.text = message;
    hud.label.font = [UIFont boldSystemFontOfSize:15.f];
    hud.contentColor = [UIColor whiteColor];
    hud.bezelView.backgroundColor = [UIColor blackColor];
    hud.mode = MBProgressHUDModeAnnularDeterminate;
    hud.removeFromSuperViewOnHide = YES;
    return hud;
}

//MARK: - 移除 Hud
+ (void)dismissHUDForView:(UIView *)view {
    if (view == nil) {
        view = [[UIApplication sharedApplication].windows lastObject];
    }
    [self hideHUDForView:view animated:YES];
}

@end
