//
//  ViewController.h
//  SimpleSample
//
//  Created by Douglas Tucker on 2/8/12.
//  Copyright (c) 2012 Tucker Consulting. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
{
    bool    bGreenButton;
    IBOutlet UIButton *speakerButton;
    IBOutlet UILabel *outputLabel;
}


- (IBAction)changeButton:(id)sender;

@end
