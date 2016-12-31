//
//  DetailViewController.h
//  Table_View
//
//  Created by Rakesh Viparla on 12/3/16.
//  Copyright © 2016 adroit37. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailViewController : UIViewController

@property (strong, nonatomic) NSArray *detailArray;

@property (weak, nonatomic) IBOutlet UIImageView *detailImgView;
@property (weak, nonatomic) IBOutlet UILabel *detailLblDesc;
@property (weak, nonatomic) IBOutlet UILabel *detailLblTitle;
@property (weak, nonatomic) IBOutlet UILabel *yearLbl;
@property (weak, nonatomic) IBOutlet UILabel *heightLbl;
@property (weak, nonatomic) IBOutlet UILabel *costLbl;
@property (weak, nonatomic) IBOutlet UILabel *recordLbl;

@end