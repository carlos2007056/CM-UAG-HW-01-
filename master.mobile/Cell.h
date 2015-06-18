//
//  Cell.h
//  master.mobile
//
//  Created by Macbook Pro on 6/18/15.
//  Copyright (c) 2015 Benn Sandoval. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Cell : UITableViewCell

@property (strong, nonatomic) IBOutlet UIImageView *imgUser;

@property (strong, nonatomic) IBOutlet UILabel *lblName;
@property (strong, nonatomic) IBOutlet UILabel *lblAge;
@property (strong, nonatomic) IBOutlet UILabel *lblAlias;

@end
