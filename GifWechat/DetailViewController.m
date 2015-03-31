//
//  DetailViewController.m
//  GifWechat
//
//  Created by ChenYi on 31/03/2015.
//  Copyright (c) 2015 Yi Chen. All rights reserved.
//

#import "DetailViewController.h"

@interface DetailViewController ()

@end

@implementation DetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    if (gifData){
        NSString *gifFile= [[NSBundle mainBundle] pathForResource:gifData.file ofType:@"gif"];
        NSData *data = [NSData dataWithContentsOfFile: gifFile];
        [_webView loadData:data MIMEType:@"image/gif" textEncodingName:nil baseURL:nil];
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)setGifData:(GifData*)data{
    gifData = data;
}

#pragma mark - IBAction

- (IBAction)closeButtonTouched:(id)sender {
    [self dismissViewControllerAnimated:TRUE completion:nil];
}

@end
