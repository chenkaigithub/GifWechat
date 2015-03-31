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
        [_gifs addObject:[[GifData alloc] initWithName:@"TestGif" file:@"TestGif" url:@""]];
    }
    return self;
}


@end
