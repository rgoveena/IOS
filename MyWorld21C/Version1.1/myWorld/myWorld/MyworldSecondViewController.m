//
//  MyworldSecondViewController.m
//  myWorld
//
//  Created by Govindasamy Rajagopal on 06/02/2015.
//  
//

#import "MyworldSecondViewController.h"

@interface MyworldSecondViewController ()

@end

@implementation MyworldSecondViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
     [self.webviewLink loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"http://finance.yahoo.com"]]];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)wellsLink:(id)sender {
    
    [self.webviewLink loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"http://wellsfargo.com"]]];
    
   }

- (IBAction)boaLink:(id)sender {
    [self.webviewLink loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"http://bankofamerica.com"]]];
}

- (IBAction)techLink:(id)sender {
    [self.webviewLink loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"http://fidelity.com"]]];
}

- (IBAction)starLink:(id)sender {

    [self.webviewLink loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"http://starone.org"]]];
    
/** [GR]This code for Direct Hyperlink activation with out UIwebview
 
    UIApplication *ourApplication = [UIApplication sharedApplication];
    NSString *ourPath = @"http://wellsfargo.com";
    NSURL *ourURL = [NSURL URLWithString:ourPath];
    [ourApplication openURL:ourURL];
 */
    
}

@end
