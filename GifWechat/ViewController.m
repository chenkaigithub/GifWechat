//
//  ViewController.m
//  GifWechat
//
//  Created by Yi Chen on 31/03/2015.
//  Copyright (c) 2015 Yi Chen. All rights reserved.
//

#import "ViewController.h"
#import "GifTableViewCell.h"
#import "DatasourceFactory.h"
#import "GifDatasource.h"
#import "GifData.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return [[[DatasourceFactory getDataSource] gifs] count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    static NSString *MyCellIdentifier = @"GifCell";
    GifTableViewCell* result = [self.tableView dequeueReusableCellWithIdentifier:MyCellIdentifier];
    
    if (result == nil){
        result = [[GifTableViewCell alloc]
                  initWithStyle:UITableViewCellStyleDefault
                  reuseIdentifier:MyCellIdentifier];
    }
    
    NSMutableArray* gifs = [[DatasourceFactory getDataSource] gifs];
    if ([indexPath row] < [gifs count]){
        GifData* data = [gifs objectAtIndex:[indexPath row]];
        result.nameLabel.text = data.name;
    }
    
    return nil;
}



@end
