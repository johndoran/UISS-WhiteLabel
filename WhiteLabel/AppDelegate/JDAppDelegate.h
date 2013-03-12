//
//  JDAppDelegate.h
//  WhiteLabel
//
//  Created by John Doran on 10/03/2013.
//  Copyright (c) 2013 John Doran. All rights reserved.
//

#import <UIKit/UIKit.h>

@class SearchViewController;

@interface JDAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (strong, nonatomic) SearchViewController *viewController;

@end
