//
//  StateCollectionViewCell.m
//  StateFlagsC
//
//  Created by Yuliya  on 7/12/22.
//

#import "StateCollectionViewCell.h"
#import "State.h"

@implementation StateCollectionViewCell

// didSet {
// updateWithState()

- (void)setState:(State *)state
{
    [self updateWithState:state];
}

- (void)updateWithState: (State *)state
{
    if (state) {
        _flagImageView.image = [UIImage imageNamed:state.abbreviation];
        _stateLabel.text = [state name];
    }
}

@end
