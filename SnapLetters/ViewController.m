//
//  ViewController.m
//  SnapViews
//
//  Created by Siva Visakan Sooriyan on 2/2/14.
//  Copyright (c) 2014 Siva Visakan Sooriyan. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

//Control Buttons
@property (weak, nonatomic) IBOutlet UIButton *b1;
@property (weak, nonatomic) IBOutlet UIButton *b2;
@property (weak, nonatomic) IBOutlet UIButton *b3;
@property (weak, nonatomic) IBOutlet UIButton *b4;
@property (weak, nonatomic) IBOutlet UIButton *b5;

//Views
@property (weak, nonatomic) IBOutlet UIView *snapView;
@property (weak, nonatomic) IBOutlet UIView *snapView2;
@property (weak, nonatomic) IBOutlet UIView *snapView3;
@property (weak, nonatomic) IBOutlet UIView *snapView4;
@property (weak, nonatomic) IBOutlet UIView *snapView5;

//Snap Behaviors
@property (strong, nonatomic) UISnapBehavior *snapBehavior5;
@property (strong, nonatomic) UISnapBehavior *snapBehavior4;
@property (strong, nonatomic) UISnapBehavior *snapBehavior3;
@property (strong, nonatomic) UISnapBehavior *snapBehavior2;
@property (strong, nonatomic) UISnapBehavior *snapBehavior;

// Dynamic Animator
@property (strong, nonatomic) UIDynamicAnimator *dynamicAnimator;

//Constant
extern const int MAX_Y;

@end

@implementation ViewController

const int MAX_Y = 200;

- (void)viewDidLoad {
    [super viewDidLoad];
    _dynamicAnimator = [[UIDynamicAnimator alloc] initWithReferenceView:self.view];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)touchB1:(id)sender {
    if(self.snapBehavior5){
        [self.dynamicAnimator removeBehavior:self.snapBehavior5];
    }
    CGPoint p ;
    if(self.snapView5.frame.origin.y > MAX_Y ) {
        p = CGPointMake(280, 160);
    } else {
        p = CGPointMake(40, 470);
    }
    self.snapBehavior5 = [[UISnapBehavior alloc] initWithItem:self.snapView5
                                                  snapToPoint:p];
    [self.dynamicAnimator addBehavior:self.snapBehavior5];
}


- (IBAction)touchB2:(id)sender {
    if(self.snapBehavior4){
        [self.dynamicAnimator removeBehavior:self.snapBehavior4];
    }
    CGPoint p ;
    if(self.snapView4.frame.origin.y > MAX_Y ) {
        p = CGPointMake(220, 160);
    } else {
        p = CGPointMake(100, 470);
    }
    self.snapBehavior4 = [[UISnapBehavior alloc] initWithItem:self.snapView4
                                                  snapToPoint:p];
    
    [self.dynamicAnimator addBehavior:self.snapBehavior4];
}

- (IBAction)touchB3:(id)sender {
    if(self.snapBehavior3){
        [self.dynamicAnimator removeBehavior:self.snapBehavior3];
    }
    
    CGPoint p ;
    if(self.snapView3.frame.origin.y > MAX_Y ) {
        p = CGPointMake(160, 160);
    } else {
        p = CGPointMake(160, 470);
    }
    self.snapBehavior3 = [[UISnapBehavior alloc] initWithItem:self.snapView3
                                                             snapToPoint:p];
   [self.dynamicAnimator addBehavior:self.snapBehavior3];
}


- (IBAction)touchB4:(id)sender {
    if(self.snapBehavior2){
        [self.dynamicAnimator removeBehavior:self.snapBehavior2];
    }
    
    CGPoint p ;
    if(self.snapView2.frame.origin.y > MAX_Y ) {
        p = CGPointMake(100, 160);
    } else {
        p = CGPointMake(220, 470);
    }
   
    self.snapBehavior2 = [[UISnapBehavior alloc] initWithItem:self.snapView2
                                                  snapToPoint:p];
    [self.dynamicAnimator addBehavior:self.snapBehavior2];
}

- (IBAction)touchB5:(id)sender {
    if(self.snapBehavior){
        [self.dynamicAnimator removeBehavior:self.snapBehavior];
    }
    CGPoint p ;
    if(self.snapView.frame.origin.y > MAX_Y ) {
        p = CGPointMake(40, 160);
    } else {
        p = CGPointMake(280, 470);
    }
    self.snapBehavior = [[UISnapBehavior alloc] initWithItem:self.snapView
                                                 snapToPoint:p];
    [self.dynamicAnimator addBehavior:self.snapBehavior];
}

@end
