//
//  MyworldFourthViewController.m
//  myWorld
//
//  Created by Govindasamy Rajagopal on 06/02/2015.
//  
//

#import "MyworldFourthViewController.h"
#import <UIKit/UIKit.h>

@interface MyworldFourthViewController ()

@end

@implementation MyworldFourthViewController


- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    // Load PDF Content into WebView
    
    NSString *thePath = [[NSBundle mainBundle] pathForResource:@"2015MyWorld21C" ofType:@"pdf"];
    
    if (thePath) {
        NSData *pdfData = [NSData dataWithContentsOfFile:thePath];
        
        [self.webviewPDF loadData:pdfData MIMEType:@"application/pdf" textEncodingName:@"utf-8" baseURL:nil];
    }

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
