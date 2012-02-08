//
//  ViewController.m
//  SimpleSample
//
//  Created by Douglas Tucker on 2/8/12.
//  Copyright (c) 2012 Tucker Consulting. All rights reserved.
//

#import "ViewController.h"
#import "AboutViewController.h"

@implementation ViewController


/***************************************************************
 *  UI Functions
 **************************************************************/
- (IBAction)changeButton:(id)sender {
    // Toggle the button state
    bGreenButton = !bGreenButton;
    
    if (bGreenButton) {
        // Display the Green speaker
        [speakerButton setImage:[UIImage imageNamed:@"AudioOn1.png"] forState:UIControlStateNormal];
        [outputLabel setText:@"Green Speaker"];
    } else {
        // Display the Red speaker
        [speakerButton setImage:[UIImage imageNamed:@"AudioOff2.png"] forState:UIControlStateNormal];
        [outputLabel setText:@"Red Speaker"];
    }
}

- (IBAction)showAbout:(id)sender {
    AboutViewController *as = [[AboutViewController alloc] init];
    
    // Push it onto the Nav controllers stack
    [[self navigationController] pushViewController:as animated:true];
}

/***************************************************************
 *  Init Functions
 **************************************************************/
- (id)init { 
    
    // Call the superclass's designated initializer 
    self = [super init]; 
    if (self) {
        bGreenButton = false;
    }
    return self;
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        // Set the title of the navigation item 
        [[self navigationItem] setTitle:@"Simple Sample"]; 
        
        UIBarButtonItem *leftButton = [[UIBarButtonItem alloc] initWithTitle:@"About" style:UIBarButtonItemStylePlain target:self action:@selector(showAbout:)];
        self.navigationItem.leftBarButtonItem = leftButton;
    }
    return self;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated
{
	[super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
	[super viewDidDisappear:animated];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

@end
