//
//  dashboardViewController.m
//  VAVA CACA
//
//  Created by Flash on 3/14/14.
//  Copyright (c) 2014 curve7. All rights reserved.
//

#import "dashboardViewController.h"
#import "DashboardTableViewCell.h"
@interface dashboardViewController ()

@end

@implementation dashboardViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    
	if (self) {
		self.title = @"HOME";
       
		// Custom initialization
		table = [[UITableView alloc]initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height)];
		table.backgroundColor = [UIColor clearColor];
		
		UIView *headerView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, 433)];
		
		UIImageView *imageView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, 433)];
		
		[imageView setImage:[UIImage imageNamed:@"slide-dashboard"]];
		
		[headerView addSubview:imageView];
		
		table.tableHeaderView = headerView;
		
		table.delegate = self;
		
		table.dataSource =self;
		
		table.separatorStyle = UITableViewCellSeparatorStyleNone;
		
		book = [[Book_ContentViewController alloc]init];
		[self.view addSubview:table];
    }
	
    return self;
}


#pragma mark - UITableViewDataSource
// number of section(s), now I assume there is only 1 section
- (NSInteger)numberOfSectionsInTableView:(UITableView *)theTableView
{
    return 1;
}
-(CGFloat )tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{

	return 723.5;
}
// number of row in the section, I assume there is only 1 row
- (NSInteger)tableView:(UITableView *)theTableView numberOfRowsInSection:(NSInteger)section
{
    return 10;
}

// the cell will be returned to the tableView
- (UITableViewCell *)tableView:(UITableView *)theTableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *cellIdentifier = @"HistoryCell";
	
    // Similar to UITableViewCell, but
    DashboardTableViewCell *cell = (DashboardTableViewCell *)[theTableView dequeueReusableCellWithIdentifier:cellIdentifier];
    if (cell == nil) {
        cell = [[DashboardTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellIdentifier];
    }
	cell.selectionStyle = UITableViewCellSelectionStyleNone;
	
	cell.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"dock"]];
	
	[cell.image setImage:[UIImage imageNamed:@"book-baronngsai"]];
	
	cell.excerpt.text = @"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text";
	
	[cell.excerpt sizeToFit];
    return cell;
}

#pragma mark - UITableViewDelegate
// when user tap the row, what action you want to perform
- (void)tableView:(UITableView *)theTableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
	[self.navigationController pushViewController:book animated:YES];
    NSLog(@"selected %ld row", (long)indexPath.row);
}
- (void)viewDidLoad
{
	for (NSString* family in [UIFont familyNames])
	{
		NSLog(@"%@", family);
        
		for (NSString* name in [UIFont fontNamesForFamilyName: family])
		{
			NSLog(@"  %@", name);
		}
	}
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end
