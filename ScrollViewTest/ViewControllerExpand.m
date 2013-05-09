//
//  ViewControllerExpand.m
//  ScrollViewTest
//
//  Created by Leonard Pham on 5/9/13.
//  Copyright (c) 2013 Citrrus. All rights reserved.
//

#import "ViewControllerExpand.h"

@interface ViewControllerExpand ()

@property (strong, nonatomic) IBOutlet NSLayoutConstraint *contentViewBottomConstraint;

@end

@implementation ViewControllerExpand

- (void)viewDidLoad
{
    [super viewDidLoad];
    
	// Do any additional setup after loading the view.
    self.contentViewBottomConstraint.constant = 0;
}

@end
