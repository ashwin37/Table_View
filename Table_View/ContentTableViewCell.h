//
//  ContentTableViewCell.h
//  Table_View
//
//  Created by Rakesh Viparla on 12/2/16.
//  Copyright © 2016 adroit37. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ContentTableViewCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UIImageView *imgView;
@property (weak, nonatomic) IBOutlet UILabel *countryLbl;
@property (weak, nonatomic) IBOutlet UILabel *placeLbl;

@end