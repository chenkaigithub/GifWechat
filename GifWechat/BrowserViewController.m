//
//  BrowserViewController.m
//  GifWechat
//
//  Created by ChenYi on 5/04/2015.
//  Copyright (c) 2015 Yi Chen. All rights reserved.
//

#import "BrowserViewController.h"

@interface BrowserViewController ()
@end

@implementation BrowserViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    _cruiserController = [[CruiserWebViewController alloc] initWithURL:
                                            [NSURL URLWithString:@"http://appcruiser.com/welcome"]];
    _navController = [[UINavigationController alloc] initWithRootViewController:_cruiserController];
    _addressField = [[UITextField alloc] initWithFrame:CGRectMake(10, 11, 355, 25)];
    _addressField.delegate                  = _cruiserController;
    _addressField.borderStyle               = UITextBorderStyleRoundedRect;
    _addressField.backgroundColor           = UIColor.whiteColor;
    _addressField.textAlignment             = NSTextAlignmentCenter;
    _addressField.returnKeyType             = UIReturnKeyGo;
    _addressField.keyboardType              = UIKeyboardTypeWebSearch;
    _addressField.clearButtonMode           = UITextFieldViewModeWhileEditing;
    _addressField.rightViewMode             = UITextFieldViewModeUnlessEditing;
    _addressField.leftViewMode              = UITextFieldViewModeAlways;
    _addressField.autocapitalizationType    = UITextAutocapitalizationTypeNone;
    _addressField.autocorrectionType        = UITextAutocorrectionTypeNo;
    _addressField.adjustsFontSizeToFitWidth = YES;
    _addressField.minimumFontSize           = 6.f;
    _cruiserController.navigationItem.titleView = _addressField;
    _cruiserController.addressField = _addressField;
    _cruiserController.showLoadingProgress = NO;

    _navController.view.frame = CGRectMake(0, 45, _navController.view.frame.size.width, _navController.view.frame.size.height - 45);
    [self.view addSubview:_navController.view];
    [self addChildViewController:_navController];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
