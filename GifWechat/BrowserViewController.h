//
//  BrowserViewController.h
//  GifWechat
//
//  Created by ChenYi on 5/04/2015.
//  Copyright (c) 2015 Yi Chen. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CruiserWebViewController.h"

@interface BrowserViewController : UIViewController

@property(strong, nonatomic) UINavigationController *navController;
@property(strong, nonatomic) CruiserWebViewController *cruiserController;
@property(strong, nonatomic) UITextField *addressField;

@end
