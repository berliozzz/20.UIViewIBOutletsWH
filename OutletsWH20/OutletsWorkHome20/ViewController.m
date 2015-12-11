//
//  ViewController.m
//  OutletsWorkHome20
//
//  Created by Nikolay Berlioz on 26.10.15.
//  Copyright © 2015 Nikolay Berlioz. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (strong, nonatomic) NSMutableArray *arrayWithPoints;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    

    
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (UIColor*) changeColor
{
    NSInteger oneOrTwo = arc4random() % 2;
    UIColor *color;
    
    if (oneOrTwo)
    {
        return color = [UIColor redColor];
    }
    else
    {
        return color = [UIColor whiteColor];
    }
}

/*****************    в этом методе вносятся изменения при повороте экрана   *********************/
- (void) viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id<UIViewControllerTransitionCoordinator>)coordinator
{
    [coordinator animateAlongsideTransition:^(id<UIViewControllerTransitionCoordinatorContext> context)
     {
         UIInterfaceOrientation orientation = [[UIApplication sharedApplication] statusBarOrientation];
         // do whatever
         
         switch (orientation)
         {
             case UIInterfaceOrientationLandscapeLeft:  //при повороте на лево цвет ячеек на доске становится синим и т.д.
                 for (UIView *view in self.cellCollection)
                 {
                     view.backgroundColor = [UIColor blueColor];
                 }
                 for (UIView *view in self.checkerCollection)
                 {
                     view.backgroundColor = [self changeColor];
                 }
                 
                 break;
             case UIInterfaceOrientationLandscapeRight:
                 for (UIView *view in self.cellCollection)
                 {
                     view.backgroundColor = [UIColor greenColor];
                 }
                 for (UIView *view in self.checkerCollection)
                 {
                     view.backgroundColor = [self changeColor];
                 }
                 break;
             case UIInterfaceOrientationPortrait:
                 for (UIView *view in self.cellCollection)
                 {
                     view.backgroundColor = [UIColor blackColor];
                 }
                 break;
             default:
                 for (UIView *view in self.cellCollection)
                 {
                     view.backgroundColor = [UIColor grayColor]; //меняем цвет ячеек
                 }
                 break;
         }
     } completion:^(id<UIViewControllerTransitionCoordinatorContext> context)
     {
         
     }];
    
    [super viewWillTransitionToSize:size withTransitionCoordinator:coordinator];
}
@end
