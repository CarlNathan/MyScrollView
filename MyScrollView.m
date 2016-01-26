//
//  MyScrollView.m
//  MyScrollView
//
//  Created by Carl Udren on 1/25/16.
//  Copyright © 2016 Carl Udren. All rights reserved.
//

#import "MyScrollView.h"

@interface MyScrollView ()

@property (assign, nonatomic) CGPoint lastPoint;

@end


@implementation MyScrollView

+ (instancetype) newMyScrollViewWith {
    MyScrollView *sv = [[MyScrollView alloc] init];
    
    UIPanGestureRecognizer *pan = [[UIPanGestureRecognizer alloc] initWithTarget:sv action:@selector(scroll:)];
    [sv addGestureRecognizer:pan];
    sv.userInteractionEnabled = YES;
    
    sv.backgroundColor = [UIColor grayColor];
    
    sv.lastPoint = CGPointMake(0, 0);
    
    return sv;
}

- (void) scroll: (UIPanGestureRecognizer *) sender {
    CGPoint translation = [sender translationInView: self];
    CGFloat y = translation.y - self.lastPoint.y;
    
    
    if (self.frame.origin.y + y>= [[UIScreen mainScreen] bounds].size.height - self.frame.size.height && self.frame.origin.y + y <= 0) {
        self.frame = CGRectMake(self.frame.origin.x, self.frame.origin.y + y, 400, 750);
    }
    
    

    self.lastPoint = CGPointMake(translation.x, translation.y);
    
    if (sender.state == UIGestureRecognizerStateEnded) {
        self.lastPoint = CGPointMake(0, 0);
    }

}


@end
