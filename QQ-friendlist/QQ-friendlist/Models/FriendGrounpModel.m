//
//  FriendGrounpModel.m
//  QQ-friendlist
//
//  Created by User on 15/11/7.
//  Copyright © 2015年 User. All rights reserved.
//

#import "FriendGrounpModel.h"
#import "MJExtension.h"
#import "FriendModel.h"
@implementation FriendGrounpModel


+(NSDictionary *)objectClassInArray
{
    
    return @{@"friends":[FriendModel class]};
}
@end
