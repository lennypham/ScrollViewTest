//
//  TestView.h
//  ScrollViewTest
//
//  Created by Leonard Pham on 5/8/13.
//  Copyright (c) 2013 Citrrus. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol FastDelegate;

@interface TestView : UIView

@property (weak, nonatomic) IBOutlet UIView *expandingView;

@property (weak, nonatomic) id<FastDelegate> delegate;

@property (weak, nonatomic) IBOutlet NSLayoutConstraint *aHeightConstraint;

- (IBAction)expandView:(id)sender;

@end

@protocol FastDelegate <NSObject>

@optional
- (void)updateViewContents;

@end