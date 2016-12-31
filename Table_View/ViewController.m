//
//  ViewController.m
//  Table_View
//
//  Created by Rakesh Viparla on 12/2/16.
//  Copyright © 2016 adroit37. All rights reserved.
//

#import "ViewController.h" 
#import "ContentTableViewCell.h"
#import "DetailViewController.h"
#import "TableViewHeader.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UITableView *contentTBV;
@property (strong, nonatomic) NSArray *titleArray;
@property (strong, nonatomic) NSArray *descriptionArray;
@property (strong, nonatomic) NSArray *imagesArray;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
   _titleArray = @[@"Burj Kalifa",
                  @"Eiffel Tower",
                  @"Empire State Building",
                  @"Kingdom Tower",
                  @"Taipei 101"];
    
    _descriptionArray = @[@"Dubai, UAE",
                          @"Paris, France",
                          @"Newyork, USA",
                          @"Jeddah, Saudi Arabia",
                          @"Taipei, Taiwan"];
    
    _imagesArray = @[@"burj.jpg",
                     @"Eiffel.jpg",
                     @"empire.jpg",
                     @"kingdomtower.jpg",
                     @"Taipei.jpg"];
    
    // For Customizing Back Button in Navigation Controller
    
    UIBarButtonItem *backBtn = [[UIBarButtonItem alloc]initWithTitle:@"" style:UIBarButtonItemStylePlain target:nil action:nil];
    [[self navigationItem] setBackBarButtonItem:backBtn];
    
    // For Seperating the View Color
    
    self.contentTBV.separatorColor = [UIColor colorWithRed:0/255.0 green:122/255.0 blue:255/255.0 alpha:0.25];
    
    self.contentTBV.tableHeaderView = [[TableViewHeader alloc]initWithText:@"Sky Scrapers"];
    
//    self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.titleArray.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    ContentTableViewCell *contentCell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];
    int row = (int)[indexPath row];
    contentCell.countryLbl.text = _titleArray[row];
    contentCell.placeLbl.text = _descriptionArray[row];
    contentCell.imgView.image = [UIImage imageNamed:_imagesArray[row]];
    return contentCell;
}

//- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
//{
////    if (editingStyle == UITableViewCellEditingStyleDelete) {
////        [self.];
////    }
//}
//
//- (void)setEditing:(BOOL)editing animated:(BOOL)animated
//{
//    [super setEditing:editing animated:animated];
//    [self.contentTBV setEditing:editing animated:animated];
//}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
    if ([[segue identifier]isEqualToString:@"ShowDetails"]) {
     
        DetailViewController *details = [segue destinationViewController];
        NSIndexPath *indexpath = [self.contentTBV indexPathForCell:
                                  (ContentTableViewCell *) sender];
        int row  = (int)[indexpath row];
        details.detailArray = @[_titleArray[row],_descriptionArray[row],_imagesArray[row]];
    }
}

@end