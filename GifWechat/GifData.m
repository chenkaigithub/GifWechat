//
//  GifData.m
//  GifWechat
//
//  Created by Yi Chen on 31/03/2015.
//  Copyright (c) 2015 Yi Chen. All rights reserved.
//

#import "GifData.h"

@implementation GifData

- (id) initWithName:(NSString*)name file:(NSString*)file url:(NSString*)url{
    if (self = [super init])
    {
        _name = name;
        _url = url;
        _file = file;
    }
    return self;
}

@end
