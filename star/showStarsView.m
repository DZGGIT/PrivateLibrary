//
//  showStarsView.m
//  star
//
//  Created by shenen on 15/11/18.
//  Copyright © 2015年 cntysoft. All rights reserved.
//

#import "showStarsView.h"
#define maxScore 5.0f
#define starNumber 5.0f
@implementation showStarsView
{
    CGFloat eachWidth;
}
@synthesize lowestScore;
-(instancetype)initWithFrame:(CGRect)frame
{
    self=[super initWithFrame:frame];
    if (self) {
        self.backgroundColor=[UIColor whiteColor];
    }
    return self;
}
-(void)setScore:(CGFloat)score
{
    self.widDistance = 5.0f;
    self.heiDistance = 5.0f;
    self.lowestScore = 0.0f;
    
    self.grayStarView = [[UIView alloc]initWithFrame:self.bounds];
    [self addSubview:self.grayStarView];
    self.foreStarView = [[UIView alloc]initWithFrame:self.bounds];
    self.foreStarView.clipsToBounds = YES;
    [self addSubview:self.foreStarView];
    
    eachWidth = (CGRectGetWidth(self.frame)-(starNumber-1)*self.widDistance)/starNumber;
    CGFloat height = CGRectGetHeight(self.frame)-2*self.heiDistance;
    for (int i = 0; i < starNumber; i++) {
        UIImage * grayImg = [UIImage imageNamed:@"starGray.png"];
        UIImageView * grayImgView = [[UIImageView alloc]initWithFrame:CGRectMake((eachWidth+self.widDistance)*i, self.heiDistance, eachWidth, height)];
        grayImgView.image = grayImg;
        [self.grayStarView addSubview:grayImgView];
        
        UIImage * foreImg = [UIImage imageNamed:@"starFore.png"];
        UIImageView * foreImgView = [[UIImageView alloc]initWithFrame:CGRectMake((eachWidth+self.widDistance)*i, self.heiDistance, eachWidth, height)];
        foreImgView.image = foreImg;
        [self.foreStarView addSubview:foreImgView];
    }
    self.lowestScore=score;
    CGPoint p = CGPointMake((eachWidth+self.widDistance)*_score, self.heiDistance);
    [self changeStarForeViewWithPoint:p];

}
- (void)changeStarForeViewWithPoint:(CGPoint)point
{
    CGPoint p = point;
    
    if (p.x < 0) {
        return;
    }
    
    if (p.x < self.lowestScore/maxScore*CGRectGetWidth(self.frame))
    {
        p.x = self.lowestScore/maxScore*CGRectGetWidth(self.frame);
    }
    else if (p.x > self.frame.size.width)
    {
        p.x = self.frame.size.width;
    }
    
    CGRect fRect = self.foreStarView.frame;
    fRect.size.width = p.x;
    self.foreStarView.frame = fRect;
    
}


@end
