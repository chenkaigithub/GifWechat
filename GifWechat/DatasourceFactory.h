//
//  DatasourceFactory.h
//  GifWechat
//
//  Created by Yi Chen on 31/03/2015.
//  Copyright (c) 2015 Yi Chen. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "GifDatasource.h"

@interface DatasourceFactory : NSObject

+ (GifDatasource*)getDataSource;

@end
