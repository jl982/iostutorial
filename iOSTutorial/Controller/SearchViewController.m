//
//  SearchViewController.m
//  iOSTutorial
//
//  Created by Jianneng on 7/28/13.
//  Copyright (c) 2013 Jianneng Li. All rights reserved.
//

#import "SearchViewController.h"

@interface SearchViewController ()

@end

@implementation SearchViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}
- (IBAction)search:(id)sender {
    NSLog(@"search field: %@", [self.searchField text]);
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    
    NSMutableURLRequest *request = [[NSMutableURLRequest alloc] init];
    [request setHTTPMethod:@"GET"];
    [request setURL:[NSURL URLWithString:@"http://localhost:9200/twitter/_search"]];
    
    NSError *error = [[NSError alloc] init];
    NSHTTPURLResponse *responseCode = nil;
    
    NSData *returnData = [NSURLConnection sendSynchronousRequest:request returningResponse:&responseCode error:&error];
    
    NSString *returnString = [[NSString alloc] initWithData:returnData encoding:NSUTF8StringEncoding];
    NSLog(@"Server response:\n%@",returnString);
    if (!returnData) {
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Request Error"
                                                        message:@"Please try again later."
                                                       delegate:nil
                                              cancelButtonTitle:@"OK"
                                              otherButtonTitles:nil];
        [alert show];
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)viewDidUnload {
    [self setSearchField:nil];
    [super viewDidUnload];
}
@end
