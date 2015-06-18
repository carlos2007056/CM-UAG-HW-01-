//
//  Start.h
//  master.mobile
//
//  Created by Macbook Pro on 6/18/15.
//  Copyright (c) 2015 Benn Sandoval. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Declarations.h"
#import "Cell.h"
#import "DetailsController.h"
#import "AddController.h"

@interface Start : UIViewController <UITableViewDataSource, UITableViewDelegate>

@property (weak, nonatomic) IBOutlet UINavigationBar *navigationView;
@property (weak, nonatomic) IBOutlet UITableView *table;

@end

