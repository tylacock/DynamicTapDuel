//
//  DTDViewController.m
//  DynamicTapDuel
//
//  Created by Lacock, Ty on 1/10/14.
//  Copyright (c) 2014 TWL. All rights reserved.
//

#import "DTDViewController.h"

@interface DTDViewController ()

@end

@implementation DTDViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)buttonPress:(UIButton *)sender {
    UIButton *button = (UIButton *)sender;
    
    if (button.tag == 1) {
        int xmin = ([button frame].size.width)/2;
        int ymin = ([button frame].size.height)/2;
        
        int x = xmin + arc4random_uniform(self.view.frame.size.width - button.frame.size.width);
        int y = ymin + arc4random_uniform((self.view.frame.size.height) / 2 - button.frame.size.height);
        
        
        [button setCenter:CGPointMake(x, y)];
    } else {
        int xmin = ([button frame].size.width)/2;
        int ymin = ([button frame].size.height)/2;
        
        int x = xmin + arc4random_uniform(self.view.frame.size.width - button.frame.size.width);
//        int y = ymin + arc4random_uniform((self.view.frame.size.height) / 2 - button.frame.size.height);
        int y = arc4random_uniform(50);
        
        [button setCenter:CGPointMake(x, y)];
    }
    
    
}

@end