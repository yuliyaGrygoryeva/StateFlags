//
//  StateConroller.h
//  StateFlagsC
//
//  Created by Yuliya  on 7/12/22.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface StateConroller : NSObject

//SOT
@property (nonatomic, strong) NSArray *states;

// Singleton
+ (StateConroller *)shared;
- (NSArray *)addStates;

@end

NS_ASSUME_NONNULL_END
