//
//  StateCollectionViewCell.h
//  StateFlagsC
//
//  Created by Yuliya  on 7/12/22.
//

#import <UIKit/UIKit.h>
#import "State.h"

NS_ASSUME_NONNULL_BEGIN

@interface StateCollectionViewCell : UICollectionViewCell

@property (nonatomic, strong, nonnull) State *state;
@property (weak, nonatomic) IBOutlet UIImageView *flagImageView;
@property (weak, nonatomic) IBOutlet UILabel *stateLabel;


@end

NS_ASSUME_NONNULL_END
