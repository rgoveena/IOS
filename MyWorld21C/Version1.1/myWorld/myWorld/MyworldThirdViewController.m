//
//  MyworldThirdViewController.m
//  myWorld
//
//  Created by Govindasamy Rajagopal on 06/02/2015.
//  
//

#import "MyworldThirdViewController.h"
#import <MessageUI/MFMessageComposeViewController.h>
#import <MessageUI/MessageUI.h> 

@interface MyworldThirdViewController ()

@property (strong, nonatomic) IBOutlet UIButton *showEmail;

@property (weak, nonatomic) IBOutlet UIButton  *buttonSMS;

@property (weak, nonatomic) IBOutlet UIButton *onCall;

@end

@implementation MyworldThirdViewController;

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
	// Do any additional setup after loading the view.
   
}
- (IBAction)onCall:(id)sender {
    // NSLog(@"[GR_MSG:]user pressed onCall Button");
    // Add Call Implementation Here ....
    
    
    
    
    NSString *number = [NSString stringWithFormat:@"%ICE","408-000-0000"];
    
    NSURL *callUrl=[NSURL URLWithString:[NSString   stringWithFormat:@"tel://%@",number]];
    
    
    //check  Call Function available only in iphone
    if([[UIApplication sharedApplication] canOpenURL:callUrl])
    {
        UIAlertView *alert=[[UIAlertView alloc]initWithTitle:@"ALERT" message:@"You're calling your ICE contact"  delegate:self cancelButtonTitle:@"Cancel" otherButtonTitles:@"Ok",nil];
        
        
        alert.alertViewStyle = UIAlertViewStylePlainTextInput;
        
        UITextField *textField = [alert textFieldAtIndex:0];
        textField.keyboardType = UIKeyboardTypeNumberPad;
        textField.placeholder = @"Enter your ICE here";
        textField.enabled = YES;
        
        [alert show];
        
        
        // NSString *phoneNumber15= [[alert textFieldAtIndex:0] text];
        
        //  NSLog(@"Entered number: %@",phoneNumber15);
        
        //  NSLog(@"Entered: %@",[[alert textFieldAtIndex:0] text]);
        
        
    }
    
    
    else
    {
        UIAlertView *alert1=[[UIAlertView alloc]initWithTitle:@"ALERT" message:@"[GR_MSG:]This function is only available on the iPhone, May be you're using the simulator"  delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
        [alert1 show];
        
    }
}

- (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex
{
    NSString *title =[alertView buttonTitleAtIndex:buttonIndex];
    
    if ([title isEqualToString:@"Ok"]){
        // NSLog(@"OK is Selected..");
        NSString *phoneNumber15= [[alertView textFieldAtIndex:0] text];
        
        NSURL *callUrl=[NSURL URLWithString:[NSString   stringWithFormat:@"tel://%@",phoneNumber15]];
        [[UIApplication sharedApplication] openURL:callUrl];
        
    }
    
    else if ([title isEqualToString:@"Cancel"]){
        // NSLog(@"Cancel is Selected..");
    }
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



- (void)sendSMS:(NSString *)bodyOfMessage recipientList:(NSArray *)recipients
{
    MFMessageComposeViewController *controller = [[MFMessageComposeViewController alloc] init];
    
    if([MFMessageComposeViewController canSendText])
    {
        controller.body = bodyOfMessage;
        controller.recipients = recipients;
        controller.messageComposeDelegate = self;
      //  [self presentViewController:controller animated:YES completion:nil];
        [self presentViewController:controller animated:YES completion:nil];
        
    }
}


- (IBAction)buttonPressed:(UIButton *)button
{
    if (button == self.buttonSMS)
        [self sendSMS:@"Hi Folks.." recipientList:[NSArray arrayWithObjects:@"408-000-0000",@"408-000-0000", nil]];
}

 

- (void)messageComposeViewController:(MFMessageComposeViewController *)controller didFinishWithResult:(MessageComposeResult)result
{
    [self dismissViewControllerAnimated:YES completion:nil];
    
    if (result == MessageComposeResultCancelled)
       NSLog(@"[GR_MSG:]Message cancelled");
        else if (result == MessageComposeResultSent)
            NSLog(@"[GR_MSG:]Message sent");
            else 
               NSLog(@"[GR_MSG:]Message failed");
                }


- (void) mailComposeController:(MFMailComposeViewController *)controller didFinishWithResult:(MFMailComposeResult)result error:(NSError *)error
{
    switch (result)
    {
        case MFMailComposeResultCancelled:
         //   NSLog(@"[GR_MSG:]Mail cancelled");
            break;
        case MFMailComposeResultSaved:
         //   NSLog(@"[GR_MSG:]Mail saved");
            break;
        case MFMailComposeResultSent:
        //    NSLog(@"[GR_MSG:]Mail sent");
            break;
        case MFMailComposeResultFailed:
        //    NSLog(@"[GR_MSG:]Mail sent failure: %@", [error localizedDescription]);
            break;
        default:
            break;
    }
    
    // Close the Mail Interface
    [self dismissViewControllerAnimated:YES completion:NULL];
}


- (IBAction)showEmail:(id)sender {
    // Email Subject
    NSString *emailTitle = @"Email from MyWorld21C Application";
    // Email Content
    NSString *messageBody = @"Message from MyWorld21C application..!";
    // To address
    NSArray *toRecipents = [NSArray arrayWithObject:@"yourname@yahoo.com"];
    
    MFMailComposeViewController *mc = [[MFMailComposeViewController alloc] init];
    mc.mailComposeDelegate = self;
    [mc setSubject:emailTitle];
    [mc setMessageBody:messageBody isHTML:NO];
    [mc setToRecipients:toRecipents];
    
    // Present mail view controller on screen
    [self presentViewController:mc animated:YES completion:NULL];
}
@end


