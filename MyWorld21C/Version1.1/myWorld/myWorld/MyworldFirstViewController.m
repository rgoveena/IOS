//
//  MyworldFirstViewController.m
//  myWorld
//
//  Created by Govindasamy Rajagopal on 06/02/2015.
// 
//

#import "MyworldFirstViewController.h"

@interface MyworldFirstViewController ()

@end

@implementation MyworldFirstViewController


- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView;

{
    return 1; }
// Return 5 rows in picker view

- (NSInteger)pickerView:(UIPickerView *)pickerView
numberOfRowsInComponent:(NSInteger)component;
{
    return 7; }


- (void)pickerView:(UIPickerView *)pickerView didSelectRow:
(NSInteger)row inComponent:(NSInteger)component
{
    NSLog(@"[GR_MSG:]the %ld row was selected in the %ld component", (long)row, (long)component);
          
}
// Print row title in picker view
- (NSString *)pickerView:(UIPickerView *)pickerView
             titleForRow:(NSInteger)row forComponent:(NSInteger)component;
{
    if (row == 1)
    {
        [self.webviewLink loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"http://google.com"]]];
       return @"Google";
        
    }
    
    if (row == 2)
    {
        [self.webviewLink loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"http://apple.com"]]];
        return @"Apple";
    
    }
    if (row == 3)
    {
    [self.webviewLink loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"http://developer.apple.com"]]];
    return @"Apple Developer";

    }
    if (row == 4)
    {
        [self.webviewLink loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"http://Amazon.com"]]];
        return @"Amazon";
    
    }
    if (row == 5)
    {
        [self.webviewLink loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"http://yahoo.com"]]];
        return @"Yahoo";
        
    }
    if (row == 6)
    {
        [self.webviewLink loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"http://cnn.com"]]];
        return @"CNN";
        
    }

    else
       
       [self.webviewLink loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"http://Dictionary.com"]]];
       return @"Dictionary";
 
   
}


- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
  //  [self.webviewLink loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"http://google.com"]]];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
