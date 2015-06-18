//
//  DetailsController.h
//  master.mobile
//
//  Created by Macbook Pro on 6/18/15.
//  Copyright (c) 2015 Benn Sandoval. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Declarations.h"

@interface DetailsController : UIViewController

@property (weak, nonatomic) IBOutlet UINavigationBar *navigationView;
@property (weak, nonatomic) IBOutlet UIImageView *image;
@property (weak, nonatomic) IBOutlet UILabel *alias;
@property (weak, nonatomic) IBOutlet UILabel *detailsDescription;

@end
