//
//  ViewController.m
//  fonting-awesome-ios-0616
//
//  Created by Kenneth Cooke on 6/29/16.
//  Copyright © 2016 kencooke. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UIButton *centerButton;
@property (strong, nonatomic) CWStatusBarNotification *notification;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    FAKFoundationIcons *bookmarkIcon = [FAKFoundationIcons bookmarkIconWithSize:60];
    
    [self.centerButton setAttributedTitle:[bookmarkIcon attributedString] forState:normal];
    
    
    self.notification = [CWStatusBarNotification new];
    
    self.notification.notificationLabelBackgroundColor = [UIColor blueColor];
    self.notification.notificationLabelTextColor = [UIColor whiteColor];
    self.notification.notificationLabelFont = [UIFont fontWithName:@"helvetica" size:40];
    self.notification.notificationLabelHeight = 100;
    
    self.notification.notificationAnimationInStyle = CWNotificationAnimationStyleTop;
    self.notification.notificationAnimationOutStyle =CWNotificationAnimationStyleTop;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)buttonTapped:(id)sender {
    FAKFoundationIcons *arrowUp = [FAKFoundationIcons arrowUpIconWithSize:60];
    
    [self.centerButton setAttributedTitle:[arrowUp attributedString] forState:normal];
    
    [self.notification dismissNotification];
    
    }



- (IBAction)centerButtonTouchDown:(id)sender {
    [self.notification displayNotificationWithMessage:@"Stop touching me!" completion:nil];
    
}

@end
