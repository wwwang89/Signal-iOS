//
//  Copyright (c) 2017 Open Whisper Systems. All rights reserved.
//

#import "DebugUIPage.h"
#import "OWSTableViewController.h"

NS_ASSUME_NONNULL_BEGIN

@implementation DebugUIPage

#pragma mark - Logging

+ (NSString *)tag
{
    return [NSString stringWithFormat:@"[%@]", self.class];
}

- (NSString *)tag
{
    return self.class.tag;
}

#pragma mark - Factory Methods

- (NSString *)name
{
    OWSFail(@"This method should be overriden in subclasses.");

    return nil;
}

- (nullable OWSTableSection *)sectionForThread:(nullable TSThread *)thread
{
    OWSFail(@"This method should be overriden in subclasses.");

    return nil;
}

@end

NS_ASSUME_NONNULL_END
