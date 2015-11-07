//
//  FriendModel.h
//  QQ-friendlist
//
//  Created by User on 15/11/7.
//  Copyright © 2015年 User. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface FriendModel : NSObject

//好友图标名称
@property (nonatomic, copy) NSString *icon;

// 好友签名名称
@property (nonatomic,copy) NSString *intro;


//好友名称
@property (nonatomic,copy) NSString *name;


@end
