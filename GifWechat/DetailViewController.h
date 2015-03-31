//
//  DetailViewController.h
//  GifWechat
//
//  Created by ChenYi on 31/03/2015.
//  Copyright (c) 2015 Yi Chen. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "GifData.h"

@interface DetailViewController : UIViewController

@property IBOutlet UIButton * button;
@property IBOutlet UIWebView * webView;

- (void)setGifData:(GifData*)gifData;

@end
