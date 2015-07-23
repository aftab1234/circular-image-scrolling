//
//  ViewController.h
//  PROBLEM2
//
//  Created by Sam on 08/07/15.
//  Copyright (c) 2015 Bets. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UIScrollViewDelegate>
{
    UIImageView *imgView;
    NSArray *updateArray;
    int y;
    NSArray *imgUrls;
}

@property (strong, nonatomic) IBOutlet UIScrollView *scrollView;


@end

