//
//  TableViewHeader.h
//  Table_View
//
//  Created by Rakesh Viparla on 12/3/16.
//  Copyright © 2016 adroit37. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TableViewHeader : UIImageView
{
    UILabel *imgLbl;
}

-(id)initWithText:(NSString *)text;
-(void)setText:(NSString *)text;


@end
