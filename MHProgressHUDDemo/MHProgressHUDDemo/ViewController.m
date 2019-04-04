//
//  ViewController.m
//  MHProgressHUDDemo
//
//  Created by Mortar on 2019/4/4.
//  Copyright © 2019 Shenzhen Anji Technology Co., Ltd. All rights reserved.
//

#import "ViewController.h"
#import "MBProgressHUD.h"

@interface ViewController ()

@property (nonatomic, assign) NSInteger index;    ///<

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    //[SVProgressHUD showInfoWithStatus:@"会话"];
    //[MBProgressHUD showMessage:@"错误" toView:nil];
    NSInteger residue = self.index % 7;
    residue = 0;
    if (residue == 0) {
        [MBProgressHUD showMessage:@"哈哈哈哈哈" toView:nil];
    } else if (residue == 1) {
        [MBProgressHUD showSuccess:nil toView:nil];
    } else if (residue == 2) {
        [MBProgressHUD showError:nil toView:nil];
    } else if (residue == 3) {
        [MBProgressHUD showWarning:nil toView:nil];
    } else if (residue == 4) {
        [MBProgressHUD showMessage:nil imageName:@"MBHUD_Info" toView:nil];
        
    } else if (residue == 5) {
        [MBProgressHUD showActivityMessage:nil view:nil];
        dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(5 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
            [MBProgressHUD dismissHUDForView:nil];
        });
    } else if (residue == 6) {
        MBProgressHUD *hud = [MBProgressHUD showProgressMessage:@"正在下载" toView:nil];
        
        // 模拟网络请求进度
        dispatch_async(dispatch_get_global_queue(0, 0), ^{
            
            float progress = 0.0f;
            
            while (progress < 1.0f) {
                progress += 0.01f;
                // 主线程刷新进度
                dispatch_async(dispatch_get_main_queue(), ^{
                    hud.progress = progress;
                });
                // 进程挂起50毫秒
                usleep(50000);
            }
            // 100%后移除
            dispatch_async(dispatch_get_main_queue(), ^{
                [hud hideAnimated:YES];
            });
        });
    }
    self.index += 1;
}

@end
