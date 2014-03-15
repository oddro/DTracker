//
//  DashboardTableViewCell.m
//  VAVA CACA
//
//  Created by Flash on 3/14/14.
//  Copyright (c) 2014 curve7. All rights reserved.
//

#import "DashboardTableViewCell.h"

@implementation DashboardTableViewCell

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
		self.image = [[UIImageView alloc]initWithFrame:CGRectMake(30, 110, 379.5, 494.5)];
		
		self.image.backgroundColor=[UIColor clearColor];
		
		self.title = [[UILabel alloc]initWithFrame:CGRectMake(430, 110, 300, 40)];
		self.title.font = [UIFont fontWithName:defaultFont size:42];
		self.title.textColor = [UIColor whiteColor];
		self.title.text = @"Barongsai";
		
		self.excerpt = [[UILabel alloc]initWithFrame:CGRectMake(430, 170, 300, 40)];
		self.excerpt.font = [UIFont fontWithName:defaultFont size:28];
		self.excerpt.numberOfLines = 0;
		self.excerpt.textColor = [UIColor whiteColor];
		self.excerpt.text = @"Barongsai";
		
		[self.contentView addSubview:self.image];
		[self.contentView addSubview:self.title];
		[self.contentView addSubview:self.excerpt];
    }
    return self;
}

- (void)awakeFromNib
{
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
