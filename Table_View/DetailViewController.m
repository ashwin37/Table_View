//
//  DetailViewController.m
//  Table_View
//
//  Created by Rakesh Viparla on 12/3/16.
//  Copyright © 2016 adroit37. All rights reserved.
//

#import "DetailViewController.h"

@interface DetailViewController ()

@end

@implementation DetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.detailLblTitle.text = _detailArray[0];
    self.detailLblDesc.text = _detailArray[1];
    self.detailImgView.image = [UIImage imageNamed:_detailArray[2]];
    
    self.navigationItem.title = _detailArray[0]; // For Title Purpose
    
    if ([self.detailLblTitle.text isEqualToString:@"Burj Kalifa"]) {
        
        self.yearLbl.text = @"Year Built: 12/30/2009";
        self.heightLbl.text = @"Height: 2722 FT";
        self.costLbl.text = @"Cost: $1.5 Billion";
        self.recordLbl.text = @"Record: Since 2010";
    }
    
    if ([self.detailLblTitle.text isEqualToString:@"Eiffel Tower"]) {
        
        self.yearLbl.text = @"Year Built: 03/15/1889";
        self.heightLbl.text = @"Height: 986 FT";
        self.costLbl.text = @"Cost: $1.5 Million";
        self.recordLbl.text = @"Record: 1889 to 1930";
    }
    
    if ([self.detailLblTitle.text isEqualToString:@"Empire State Building"]) {
        self.yearLbl.text = @"Year Built: 04/11/1931";
        self.heightLbl.text = @"Height: 1454 FT";
        self.costLbl.text = @"Cost: $40,948,900";
        self.recordLbl.text = @"Record: 1931 to 1970";
    }
    
    if ([self.detailLblTitle.text isEqualToString:@"Kingdom Tower"]) {
        self.yearLbl.text = @"Year Built: Est 2019";
        self.heightLbl.text = @"Height: 3,304 FT";
        self.costLbl.text = @"Cost: $1.23 Billion";
        self.recordLbl.text = @"Record: N/A";
    }
    
    if ([self.detailLblTitle.text isEqualToString:@"Taipei 101"]) {
        self.yearLbl.text = @"Year Built: 12/31/2004";
        self.heightLbl.text = @"Height: 1,671 FT";
        self.costLbl.text = @"Cost: $1.934 Billion";
        self.recordLbl.text = @"Record: 2004 to 2009";
    }   
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
