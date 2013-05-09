//
//  TestView.m
//  ScrollViewTest
//
//  Created by Leonard Pham on 5/8/13.
//  Copyright (c) 2013 Citrrus. All rights reserved.
//

#import "TestView.h"

@interface TestView()

@property BOOL isViewExpanded;

@end

@implementation TestView

- (id)initWithCoder:(NSCoder *)aDecoder
{
    self = [super initWithCoder:aDecoder];
    
    if (self)
    {
    }
    
    return self;
}

- (void)awakeFromNib
{
}

- (IBAction)expandView:(id)sender
{
    if (self.isViewExpanded)
    {
        self.aHeightConstraint.constant -= 80.0;
    }
    else
    {
        self.aHeightConstraint.constant += 80.0;
    }
    
    [UIView animateWithDuration:0.5
                     animations:^{
                         [self layoutIfNeeded];
                     } completion:^(BOOL finished) {
                         self.isViewExpanded = !self.isViewExpanded;
                     }];
}

@end
