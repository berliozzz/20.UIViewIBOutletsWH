//
//  ViewController.h
//  OutletsWorkHome20
//
//  Created by Nikolay Berlioz on 26.10.15.
//  Copyright © 2015 Nikolay Berlioz. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (strong, nonatomic) IBOutletCollection(UIView) NSArray *cellCollection;

@property (strong, nonatomic) IBOutletCollection(UIView) NSArray *checkerCollection;

@end

