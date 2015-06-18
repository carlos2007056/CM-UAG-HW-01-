//
//  AddController.m
//  master.mobile
//
//  Created by Macbook Pro on 6/18/15.
//  Copyright (c) 2015 Benn Sandoval. All rights reserved.
//

#import "AddController.h"

@interface AddController ()

@end

@implementation AddController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self initController];
}

-(void)initController {
    
    UIBarButtonItem *backButton = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemCancel
                                                           target:self
                                                           action:@selector(closeThisView:)];
    
    UINavigationItem *item = [[UINavigationItem alloc] initWithTitle:@"NEW"];
    item.rightBarButtonItem = backButton;
    item.hidesBackButton = YES;
    [self.navigationView pushNavigationItem:item animated:NO];
    
    self.navigationItem.rightBarButtonItem = backButton;
    
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc]
                                   initWithTarget:self
                                   action:@selector(dismissKeyboard)];
    tap.cancelsTouchesInView = NO;
    [self.view addGestureRecognizer:tap];
}

-(void)dismissKeyboard {
    [self.view endEditing:YES];
}

- (IBAction)closeThisView:(id)sender {
    [self dismissViewControllerAnimated:YES completion:Nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

- (IBAction)saveNew:(id)sender {
    [mNames addObject:self.name.text];
    [mAliases addObject:self.alias.text];
    [mAges addObject:self.age.text];
    [mDescriptions addObject:@"I'm so sorry this is only for test."];
    [mImgs addObject:@"dany.jpg"];
    
    [self dismissViewControllerAnimated:YES completion:Nil];
}

@end
