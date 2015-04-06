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
#import "DetailViewController.h"

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

#pragma mark - UITableViewDataSource

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    NSMutableArray* gifs = [[DatasourceFactory getDataSource] gifs];
    return [gifs count];
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
    
    return result;
}

#pragma mark - Navigation

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([[segue identifier] isEqualToString:@"DetailSegue"])
    {
        // Get reference to the destination view controller
        DetailViewController *vc = [segue destinationViewController];
        
        GifData* data;
//        if (self.searchDisplayController.active == YES)
//        {
//            NSArray* estates = _searchResults;
//            NSIndexPath *indexPath = [self.searchDisplayController.searchResultsTableView indexPathForCell:sender];
//            data = [estates objectAtIndex:indexPath.row];
//        }
//        else
        {
            NSArray* gifs =[[DatasourceFactory getDataSource] gifs];
            NSIndexPath *indexPath = [self.tableView indexPathForCell:sender];
            data = [gifs objectAtIndex:indexPath.row];
        }
        
        [vc setGifData:data];
    }
    else if ([[segue identifier] isEqualToString:@"AddGifSegue"])
    {
//        // Get reference to the destination view controller
//        NoteViewController *vc = [segue destinationViewController];
//        
//        [vc setEstateData:nil];
//        BrowserViewController *vc = [segue destinationViewController];
        
        GifData* data;
        //        if (self.searchDisplayController.active == YES)
        //        {
        //            NSArray* estates = _searchResults;
        //            NSIndexPath *indexPath = [self.searchDisplayController.searchResultsTableView indexPathForCell:sender];
        //            data = [estates objectAtIndex:indexPath.row];
        //        }
        //        else
        {
            NSArray* gifs =[[DatasourceFactory getDataSource] gifs];
            NSIndexPath *indexPath = [self.tableView indexPathForCell:sender];
            data = [gifs objectAtIndex:indexPath.row];
        }
        
//        [vc setGifData:data];
    }
}



@end
