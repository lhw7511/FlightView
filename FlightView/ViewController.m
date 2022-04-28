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
@synthesize returnDateLabel,returnDateButton,selectDatePicker,departureDateButton;
- (void)viewDidLoad {
    [super viewDidLoad];
    buttonTag = 0;
    returnDateLabel.hidden = true;
    returnDateButton.hidden = true;
    selectDatePicker.hidden = true;
}



- (IBAction)selectDateAction:(id)sender {
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    formatter.dateFormat = @"YY-MM-dd hh:mma";
    NSString *dateString = [formatter stringFromDate:selectDatePicker.date];
    if(buttonTag == 1){
        [departureDateButton setTitle:dateString forState:UIControlStateNormal];
    }else{
        [returnDateButton setTitle:dateString forState:UIControlStateNormal];
    }
    
}

- (IBAction)showDatePickerAction:(id)sender {
    selectDatePicker.hidden = false;
    buttonTag = [sender tag];
}

- (IBAction)showReturnDateAction:(id)sender {
    returnDateLabel.hidden = ![sender isOn];
    returnDateButton.hidden = ![sender isOn];
    
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    [self.view endEditing:YES];
    selectDatePicker.hidden = true;
}
- (BOOL)textFieldShouldReturn:(UITextField *)textField{
    [textField resignFirstResponder];
    return YES;
}
@end
