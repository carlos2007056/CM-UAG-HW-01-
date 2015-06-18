//
//  Start.m
//  master.mobile
//
//  Created by Macbook Pro on 6/18/15.
//  Copyright (c) 2015 Benn Sandoval. All rights reserved.
//

#import "Start.h"

@interface Start ()

@end

@implementation Start

- (void)viewDidLoad {
    [super viewDidLoad];
    [self initController];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

-(void) viewWillAppear: (BOOL) animated {
    [self.table reloadData];
}

-(void)initController {
    
    UIBarButtonItem *addButton = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemAdd
                                                          target:self
                                                          action:@selector(addNewElement:)];
    
    UINavigationItem *item = [[UINavigationItem alloc] initWithTitle:@"GOT"];
    item.rightBarButtonItem = addButton;
    item.hidesBackButton = YES;
    [self.navigationView pushNavigationItem:item animated:NO];
    
    self.navigationItem.rightBarButtonItem = addButton;
    
    mNames         = [[NSMutableArray alloc] initWithObjects:
                       @"Daenerys Targaryen",
                       @"Jon Snow",
                       @"Tyrion Lannister",
                       @"Joffrey Baratheon",
                       @"Khal Drogo",
                       nil];
    mAges          = [[NSMutableArray alloc] initWithObjects:
                       @"17",
                       @"18",
                       @"35",
                       @"14",
                       @"25",
                       nil];
    mImgs          = [[NSMutableArray alloc] initWithObjects:
                       @"dany.jpg",
                       @"jonsnow.jpeg",
                       @"tyrion.png",
                       @"joffrey.png",
                       @"drogo.png",
                       nil];
    mAliases       = [[NSMutableArray alloc] initWithObjects:
                       @"Dany",
                       @"You know Nothing",
                       @"Small",
                       @"Puppet King",
                       @"Drogo",
                       nil];
    mDescriptions = [[NSMutableArray alloc] initWithObjects:
                      @"Daenerys is the only daughter and youngest child of King Aerys II Targaryen, the Mad King, and his sister-wife Rhaella.",
                      @"Jon is the bastard son of Lord Eddard Stark of Winterfell, the head of House Stark and Lord Paramount of the North.",
                      @"He is a dwarf, causing him probems and persecution. His size has led him to being referred to derisively by various names, such as the Imp and The Halfman. This is mitigated by his intellect and his family's wealth and power. ",
                      @"Joffrey is believed to be the oldest son and heir of King Robert Baratheon and Queen Cersei Lannister, both of whom entered into a political marriage alliance after Robert took the throne by force from the Mad King Aerys II Targaryen. In reality, his father is Jaime Lannister, the queen's brother and the Lord Commander of the Kingsguard.",
                      @"Drogo is a powerful warlord and feared warrior. He marries Daenerys Targaryen and subsequently grows to love her. He promises to retake the Seven Kingdoms for her after she survives an assassination attempt. ",
                      nil];
}

- (IBAction)addNewElement:(id)sender {
    AddController *addController = [[UIStoryboard storyboardWithName:@"Main"
                                                                bundle:nil]
                                      instantiateViewControllerWithIdentifier:@"AddController"];
    
    [self presentViewController:addController animated:YES completion:nil];
}

#pragma mark - Table source and delegate methods
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return mNames.count;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 55;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    Cell *cell = (Cell *)[tableView dequeueReusableCellWithIdentifier:@"Cell"];
    if (cell == nil) {
        [tableView registerNib:[UINib nibWithNibName:@"Cell" bundle:nil] forCellReuseIdentifier:@"Cell"];
        cell = [tableView dequeueReusableCellWithIdentifier:@"Cell"];
    }
    cell.lblName.text   = mNames[indexPath.row];
    cell.lblAge.text    = mAges[indexPath.row];
    cell.lblAlias.text  = mAliases[indexPath.row];
    cell.imgUser.image  = [UIImage imageNamed:mImgs[indexPath.row]];
    cell.clipsToBounds  = YES;
    [cell.contentView.superview setClipsToBounds:YES];
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    mCharacterIndex = (int)indexPath.row;
    
    DetailsController *detailsView = [[UIStoryboard storyboardWithName:@"Main"
                                     bundle:nil]
                                     instantiateViewControllerWithIdentifier:@"DetailsController"];
    
    [self presentViewController:detailsView animated:YES completion:nil];
}

- (void)tableView:(UITableView *)tableView willDisplayCell:(UITableViewCell *)cell forRowAtIndexPath:(NSIndexPath *)indexPath {
    
    
}

@end
