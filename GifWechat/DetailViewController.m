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
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (void)setGifData:(GifData*)gifData{
    NSString *gifFile= [[NSBundle mainBundle] pathForResource:gifData.file ofType:@"gif"];
    NSData *data = [NSData dataWithContentsOfFile: gifFile];
    [self.webView loadData:data MIMEType:@"image/gif" textEncodingName:nil baseURL:nil];
}


@end
