//
//  SearchViewController.h
//  iOSTutorial
//
//  Created by Jianneng on 7/28/13.
//  Copyright (c) 2013 Jianneng Li. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SearchViewController : UIViewController<UITextFieldDelegate>
@property (weak, nonatomic) IBOutlet UITextField *searchField;

@end
