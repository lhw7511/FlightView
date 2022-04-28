//
//  ViewController.m
//  FlightView
//
//  Created by beintech on 2022/04/26.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize returnDateLabel,returnDateButton,selectDatePicker;
- (void)viewDidLoad {
    [super viewDidLoad];
    returnDateLabel.hidden = true;
    returnDateButton.hidden = true;
    selectDatePicker.hidden = true;
}



- (IBAction)showReturnDateAction:(id)sender {
    if(returnDateLabel.hidden){
        returnDateLabel.hidden = false;
        returnDateButton.hidden = false;
    }else{
        returnDateLabel.hidden = true;
        returnDateButton.hidden = true;
    }
    
}
@end
