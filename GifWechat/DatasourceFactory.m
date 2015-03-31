//
//  DatasourceFactory.m
//  GifWechat
//
//  Created by Yi Chen on 31/03/2015.
//  Copyright (c) 2015 Yi Chen. All rights reserved.
//

#import "DatasourceFactory.h"

@implementation DatasourceFactory

static GifDatasource *datasource = nil;

+ (GifDatasource*)getDataSource{
    if (datasource == nil)
    {
        datasource = [[GifDatasource alloc] init];
    }
    return datasource;
}


@end
