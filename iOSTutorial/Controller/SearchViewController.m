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
    
    NSMutableURLRequest *request = [[NSMutableURLRequest alloc] init];
    [request setHTTPMethod:@"GET"];
    
    NSString *query = self.searchField.text;
    if (query.length > 0) {
        NSString *url = [NSString stringWithFormat:@"http://localhost:9200/twitter/_search?q=%@", self.searchField.text];
        [request setURL:[NSURL URLWithString:url]];
    } else {
        [request setURL:[NSURL URLWithString:@"http://localhost:9200/twitter/_search"]];
    }
    
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
    } else {
        self.searchResultView.text = returnString;
    }
}

- (BOOL) textFieldShouldReturn:(UITextField *)textField {
    [self.searchField resignFirstResponder];
    return YES;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    [self.searchField setDelegate:self];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)viewDidUnload {
    [self setSearchField:nil];
    [self setSearchResultView:nil];
    [super viewDidUnload];
}
@end
