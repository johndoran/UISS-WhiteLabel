//
//  SearchViewController.m
//  WhiteLabel
//
//  Created by John Doran on 11/03/2013.
//  Copyright (c) 2013 John Doran. All rights reserved.
//

#import "SearchViewController.h"

@interface SearchViewController ()

@end

@implementation SearchViewController

@synthesize scrollView;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
   // [self.view setBackgroundColor:[UIColor whiteColor]];
    [scrollView setContentSize:CGSizeMake(scrollView.bounds.size.width, 600)];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
