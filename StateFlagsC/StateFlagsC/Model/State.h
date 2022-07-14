//
//  State.h
//  StateFlagsC
//
//  Created by Yuliya  on 7/12/22.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface State : NSObject

// let name: String
// * == POINTER
// Primitives: Base type that does not need a pointer
// nonatomic vs atomic(for swift default) -- copy -- has to do with accessing the variable from separate threads/

// copy vs no copy -- Copy makes properties read-only. Nt a referenc

@property (nonatomic, copy) NSString *name;
@property (nonatomic, copy) NSString *abbreviation;

- (instancetype)initWithName:(NSString *)name
                abbreviation:(NSString *)abbreviation;


@end

NS_ASSUME_NONNULL_END
