//
//  State.m
//  StateFlagsC
//
//  Created by Yuliya  on 7/12/22.
//

#import "State.h"

@implementation State

- (instancetype)initWithName:(NSString *)name
                abbreviation:(NSString *)abbreviation
{
    self = [super init];
    if (self) {
        _name = name;
        _abbreviation = abbreviation;
    }
    return self;
}

@end
