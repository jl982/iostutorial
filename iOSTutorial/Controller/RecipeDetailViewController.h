//
//  RecipeDetailViewController.h
//  iOSTutorial
//
//  Created by Jianneng on 7/10/13.
//  Copyright (c) 2013 Jianneng Li. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface RecipeDetailViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *recipeLabel;
@property (weak, nonatomic) NSString *recipeName;

@end
