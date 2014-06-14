//
//  MainViewController.m
//  codepathWeek1
//
//  Created by Michael Wang on 6/13/14.
//  Copyright (c) 2014 mkwng. All rights reserved.
//

#import "MainViewController.h"
#import <QuartzCore/QuartzCore.h>

@interface MainViewController ()
- (IBAction)likeButton:(id)sender;
@property (weak, nonatomic) IBOutlet UIView *feedItem;

@end

@implementation MainViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    self.feedItem.layer.cornerRadius = 4;
    self.feedItem.layer.shadowColor = [UIColor blackColor].CGColor;
    self.feedItem.layer.shadowOffset = CGSizeMake(0, 1);
    self.feedItem.layer.shadowOpacity = 0.2;
    self.feedItem.layer.shadowRadius = 2;
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)likeButton:(id)sender {
    UIButton *likeButton = (id)sender;
    [likeButton setSelected:YES];
}
@end
