//
//  SettingsViewController.m
//  tipCalculator
//
//  Created by Priyankaa Vijayakumar on 9/9/14.
//  Copyright (c) 2014 codepath. All rights reserved.
//

#import "SettingsViewController.h"

@interface SettingsViewController ()
@property (weak, nonatomic) IBOutlet UISegmentedControl *deaultTipControl;
- (IBAction)onSettingsChanged:(id)sender;

@end

@implementation SettingsViewController

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
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)viewWillAppear:(BOOL)animated {
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    
    int intValue = (int)[defaults integerForKey:@"another_key_that_you_choose"];
    self.deaultTipControl.selectedSegmentIndex = intValue;
}

- (IBAction)onSettingsChanged:(id)sender {
    int currentIndex = (int) self.deaultTipControl.selectedSegmentIndex;
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    [defaults setInteger:currentIndex forKey:@"another_key_that_you_choose"];
    [defaults synchronize];
    
}
@end
