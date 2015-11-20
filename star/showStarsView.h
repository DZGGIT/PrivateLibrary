//
//  showStarsView.h
//  star
//
//  Created by shenen on 15/11/18.
//  Copyright © 2015年 cntysoft. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface showStarsView : UIView
@property (nonatomic,assign)CGFloat widDistance;//星星之间的左右间隔
@property (nonatomic,assign)CGFloat heiDistance;//星星之间的上下间隔

@property (nonatomic,strong)UIView * grayStarView;//灰色星星
@property (nonatomic,strong)UIView * foreStarView;//表示分数星星

@property (nonatomic,assign)CGFloat lowestScore;//最低分数
@property (nonatomic,assign)CGFloat score;//当前分数
@end
