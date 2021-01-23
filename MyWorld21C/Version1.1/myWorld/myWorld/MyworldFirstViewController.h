//
//  MyworldFirstViewController.h
//  myWorld
//
//  Created by Govindasamy Rajagopal on 06/02/2015.
//  
//

#import <UIKit/UIKit.h>
#import <MessageUI/MFMessageComposeViewController.h>


@interface MyworldFirstViewController : UIViewController<UIPickerViewDataSource, UIPickerViewDelegate>

@property (strong, nonatomic) IBOutlet UIPickerView *pickerView;

@property (strong, nonatomic) IBOutlet UIWebView *webviewLink;


@end
