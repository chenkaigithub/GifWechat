//
//  GifDatasource.m
//  GifWechat
//
//  Created by Yi Chen on 31/03/2015.
//  Copyright (c) 2015 Yi Chen. All rights reserved.
//

#import "GifDatasource.h"
#import "GifData.h"

@implementation GifDatasource

- (id) init
{
    if (self = [super init])
    {
        _gifs = [[NSMutableArray alloc] init];
        [_gifs addObject:[[GifData alloc] initWithName:@"TestGif" file:@"kitty" url:@""]];
    }
    return self;
}


@end
