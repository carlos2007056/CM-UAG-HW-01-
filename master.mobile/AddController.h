//
//  AddController.h
//  master.mobile
//
//  Created by Macbook Pro on 6/18/15.
//  Copyright (c) 2015 Benn Sandoval. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Declarations.h"

@interface AddController : UIViewController

@property (weak, nonatomic) IBOutlet UINavigationBar *navigationView;
@property (weak, nonatomic) IBOutlet UITextField *name;
@property (weak, nonatomic) IBOutlet UITextField *alias;
@property (weak, nonatomic) IBOutlet UITextField *age;

@end
