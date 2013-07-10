//
//  RecipeViewController.h
//  iOSTutorial
//
//  Created by Jianneng on 7/10/13.
//  Copyright (c) 2013 Jianneng Li. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface RecipeViewController : UIViewController <UITableViewDelegate, UITableViewDataSource>
@property (weak, nonatomic) IBOutlet UITableView *tableView;

@end
