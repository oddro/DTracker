//
//  dashboardViewController.h
//  VAVA CACA
//
//  Created by Flash on 3/14/14.
//  Copyright (c) 2014 curve7. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Book-ContentViewController.h"
@interface dashboardViewController : UIViewController<UITableViewDataSource,UITableViewDelegate>
{
	UITableView *table;
	Book_ContentViewController *book;
}

@end
