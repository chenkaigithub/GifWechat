//
//  GifData.h
//  GifWechat
//
//  Created by Yi Chen on 31/03/2015.
//  Copyright (c) 2015 Yi Chen. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface GifData : NSObject

@property NSString* name;
@property NSString* file;
@property NSString* url;

- (id) initWithName:(NSString*)name file:(NSString*)file url:(NSString*)url;

@end
