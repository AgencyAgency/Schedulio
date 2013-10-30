//
//  PDCDetailViewController.h
//  Schedulio
//
//  Created by Kyle Oba on 10/29/13.
//  Copyright (c) 2013 Kyle Oba. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PDCDetailViewController : UIViewController

@property (strong, nonatomic) id detailItem;

@property (weak, nonatomic) IBOutlet UILabel *detailDescriptionLabel;
@end
