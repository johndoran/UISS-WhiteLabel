//
//  JDAppDelegate.m
//  WhiteLabel
//
//  Created by John Doran on 10/03/2013.
//  Copyright (c) 2013 John Doran. All rights reserved.
//

#import "JDAppDelegate.h"

#import "SearchViewController.h"
#import "UISS.h"

#if UISS_DEBUG
#import "UISSAppearancePrivate.h"
#endif

@interface JDAppDelegate()
  @property(nonatomic, strong) UISS *uiss;
@end

@implementation JDAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    [self setupUISS];
    
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    self.viewController = [[SearchViewController alloc] initWithNibName:@"SearchViewController" bundle:nil];

    
    UINavigationController *navCont = [[UINavigationController alloc] initWithRootViewController:self.viewController];
    navCont.navigationBarHidden = YES;
    [self.window makeKeyAndVisible];

    [[self window] setRootViewController:navCont];
    
    return YES;
}

-(void)setupUISS{    
    // Remote Style
   // self.uiss = [UISS configureWithURL:[NSURL URLWithString:@"http://localhost:8082/uiss/uiss.json"]];
    
    // Local Style
    self.uiss = [UISS configureWithDefaultJSONFile];
    self.uiss.statusWindowEnabled = YES;
    self.uiss.autoReloadEnabled = YES;
    self.uiss.autoReloadTimeInterval = 1;
}

@end
