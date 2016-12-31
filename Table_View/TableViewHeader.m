//
//  TableViewHeader.m
//  Table_View
//
//  Created by Rakesh Viparla on 12/3/16.
//  Copyright © 2016 adroit37. All rights reserved.
//

#import "TableViewHeader.h"

@implementation TableViewHeader

-(id)initWithText:(NSString *)text{
    
    UIImage *headerImg = [UIImage imageNamed:@"Header.jpg"];
    
    if ((self = [super initWithImage:headerImg])) {
        imgLbl = [[UILabel alloc] initWithFrame:CGRectMake(20, 0, 200, 50)];
        imgLbl.textColor = [UIColor whiteColor];
        imgLbl.backgroundColor = [UIColor clearColor];
        imgLbl.font = [UIFont systemFontOfSize:25];
        imgLbl.text = text;
        imgLbl.numberOfLines = 1;
        [self addSubview:imgLbl];
    }
    return self;
}

-(void)setText:(NSString *)text{
   
    imgLbl.text = text;
}

@end