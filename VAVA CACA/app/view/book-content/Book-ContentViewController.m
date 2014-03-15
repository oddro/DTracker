//
//  Book-ContentViewController.m
//  VAVA CACA
//
//  Created by Flash on 3/15/14.
//  Copyright (c) 2014 curve7. All rights reserved.
//

#import "Book-ContentViewController.h"

@interface Book_ContentViewController ()

@end

@implementation Book_ContentViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
		self.view.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"main-bg"]];
        // Custom initialization
		
		scrollView = [[UIScrollView alloc]initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height-64)];
		scrollView.delegate = self;
	
		scrollView.pagingEnabled  = YES;
		
		scrollView.bounces  =false;
		
		[self.view addSubview:scrollView];
		
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];

	self.title = @"Barongsai";
    // Do any additional setup after loading the view.
}
-(void)loadView{
	[super loadView];
		
}
-(void)viewWillAppear:(BOOL)animated{
	[super viewWillAppear:YES];
	[self loadStory];
}
-(void)loadStory{

	// Adjust scroll view content size, set background colour and turn on paging
	
    scrollView.contentSize = CGSizeMake(scrollView.frame.size.width * 12,
										scrollView.frame.size.height);
    scrollView.pagingEnabled=YES;
	scrollView.bounces =false;
	scrollView.bouncesZoom = false;
    scrollView.backgroundColor = [UIColor blackColor];
	
	// Generate content for our scroll view using the frame height and width as the reference point
	
    int i = 0;
    while (i<=11) {
		
        UIView *views = [[UIView alloc]
						 initWithFrame:CGRectMake((scrollView.frame.size.width)*i, 0, scrollView.frame.size.width, scrollView.frame.size.height)];
        UIImageView *lola = [[UIImageView alloc]initWithFrame:views.frame];
		[lola setImage:[UIImage imageNamed:[NSString stringWithFormat:@"ms-01-frame%d",i]]];
		[views setTag:i];
		//[views addSubview:lola];
        [scrollView addSubview:lola];
		
        i++;
    }}
- (void)scrollViewDidScroll:(UIScrollView *)scrollViews {
	static NSInteger previousPage = 0;
	
	CGFloat pageWidth = scrollViews.frame.size.width;
	
	float fractionalPage = scrollViews.contentOffset.x / pageWidth;
	
	NSInteger page = lround(fractionalPage);
	
	
	
	if (previousPage != page) {
	
		previousPage = page;
		
		NSLog(@"page changed");
		NSLog(@"%ld",(long)page);
	}
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
	
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
