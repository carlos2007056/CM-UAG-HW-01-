//
//  DetailsController.m
//  master.mobile
//
//  Created by Macbook Pro on 6/18/15.
//  Copyright (c) 2015 Benn Sandoval. All rights reserved.
//

#import "DetailsController.h"

@interface DetailsController ()

@end

@implementation DetailsController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self initController];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

-(void)initController {

    UIBarButtonItem *backButton = [[UIBarButtonItem alloc] initWithTitle:@"Done" style:UIBarButtonItemStyleDone
                              target:self
                              action:@selector(closeThisView:)];
    
    UINavigationItem *item = [[UINavigationItem alloc] initWithTitle:mNames[mCharacterIndex]];
    item.rightBarButtonItem = backButton;
    item.hidesBackButton = YES;
    [self.navigationView pushNavigationItem:item animated:NO];
    
    self.navigationItem.rightBarButtonItem = backButton;
    
    self.alias.text = mAliases[mCharacterIndex];
    self.detailsDescription.text = mDescriptions[mCharacterIndex];
    self.image.image  = [UIImage imageNamed:mImgs[mCharacterIndex]];
    
}

- (IBAction)closeThisView:(id)sender {
    [self dismissViewControllerAnimated:YES completion:Nil];
}

@end
