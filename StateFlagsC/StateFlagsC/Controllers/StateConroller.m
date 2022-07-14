//
//  StateConroller.m
//  StateFlagsC
//
//  Created by Yuliya  on 7/12/22.
//

#import "StateConroller.h"
#import "StateHelper.h"
#import "State.h"

@implementation StateConroller

+ (StateConroller *)shared
{
    static StateConroller *shared = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^ {
        shared = [StateConroller new];
    });
    return shared;
}

- (instancetype)init
{
    self = [super init];
    if (self) {
        _states = [self addStates];
    }
    return  self;
}
- (NSArray *)addStates
{
    NSMutableArray *states = [[NSMutableArray alloc] init];
    for (NSString *stateName in [StateHelper states] ) {
        NSInteger index = [[StateHelper states] indexOfObject:stateName];
        NSString *abbreviation = [[StateHelper abbreviations] objectAtIndex:index];
        State *state = [[State alloc] initWithName:stateName abbreviation:abbreviation];
        [states addObject:state]; //append
        
        
    }
    
    return states;
    
    
}


@end
