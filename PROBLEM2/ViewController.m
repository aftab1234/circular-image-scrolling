//
//  ViewController.m
//  PROBLEM2
//
//  Created by Sam on 08/07/15.
//  Copyright (c) 2015 Bets. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize scrollView;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
      imgUrls = [NSArray arrayWithObjects:@"http://m.letmedrive.in/cars/7.jpg",@"http://m.letmedrive.in/cars/6.jpg",@"http://m.letmedrive.in/cars/5.jpg",@"http://m.letmedrive.in/cars/4.jpg",@"http://m.letmedrive.in/cars/3.jpg" ,nil];
     y=0;
    for (int i=0; i<5; i++)
    {
        
        NSURL *url = [NSURL URLWithString:[imgUrls objectAtIndex:i]];
        NSData *data = [NSData dataWithContentsOfURL:url];
        UIImage *img = [[UIImage alloc] initWithData:data];
        imgView= [[UIImageView alloc] initWithFrame:CGRectMake(y+20, 130, 100, 80)];
        y=y+200;
        imgView.image=img;
        
//        id firstItem = imgUrls[0];
//        id lastItem = [imgUrls lastObject];
//        
//        NSMutableArray *workingArray = [imgUrls mutableCopy];
//        [workingArray insertObject:lastItem atIndex:0];
//        [workingArray addObject:firstItem];
//        updateArray = [NSArray arrayWithArray:workingArray];


        
        [scrollView addSubview:imgView];
        
      
    }
    [scrollView setContentSize:CGSizeMake(y-80, scrollView.frame.size.height)];
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//-(UIView *)viewForZoomingInScrollView:(UIScrollView *)scrollView{
//    return imgView;
//}
- (void)scrollViewDidEndDecelerating:(UIScrollView *)sender
{
    NSLog(@"%f",scrollView.contentOffset.x);
    // The key is repositioning without animation
    if (scrollView.contentOffset.x == 0) {

        
        [scrollView scrollRectToVisible:CGRectMake(810, 0, 320, 416) animated:NO];
        
    }
    else if (scrollView.contentOffset.x == 600) {
   
        
        
        [scrollView scrollRectToVisible:CGRectMake(0,0,320,416) animated:NO];
        
        
    }
   
}
-(void)scrollViewDidScroll:(UIScrollView *)scrollView{
        NSLog(@"Did scroll");
}
-(void)scrollViewDidEndDragging:(UIScrollView *)scrollView
                 willDecelerate:(BOOL)decelerate{
    NSLog(@"Did end dragging");
  
   
}
-(void)scrollViewWillBeginDecelerating:(UIScrollView *)scrollView{
    NSLog(@"Did begin decelerating");
}
-(void)scrollViewWillBeginDragging:(UIScrollView *)scrollView{
    NSLog(@"Did begin dragging");
}

@end
