//
//  ViewController.m
//  QQ-friendlist
//
//  Created by User on 15/11/7.
//  Copyright © 2015年 User. All rights reserved.
//

#import "ViewController.h"

#import "FriendGrounpModel.h"

#import "FriendModel.h"
#import "MJExtension.h"


@interface ViewController ()<UITableViewDataSource,UITableViewDelegate>


@property (nonatomic,strong) NSArray *friendGrounp;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    NSLog(@"%zd",self.friendGrounp.count);
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma UITableViewDataSource 数据源方法
// 返回多少组
- (NSInteger )numberOfSectionsInTableView:(UITableView *)tableView
{
    
    return self.friendGrounp.count;
    
}

// 每组返回多少行

- (NSInteger )tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    
    FriendGrounpModel *friendGroup = self.friendGrounp[section];
    
    NSArray *array = friendGroup.friends;
    return array.count;
    

}

// 返回怎么样的cell

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *reuserID = @"cell";
    
    
    //获取数据
    FriendGrounpModel *friendGrounp = self.friendGrounp[indexPath.section];
    FriendModel *friendModel = friendGrounp.friends[indexPath.row];
    
    // 创建cell
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:reuserID];
    if (cell ==nil) {
        
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:reuserID];
    }
    
    cell.textLabel.text = friendModel.name;
    
    return cell;

}



// 懒加载  实现plist文件转化为数据模型
-(NSArray *)friendGrounp
{
    if (_friendGrounp == nil) {
        
//        NSArray *array = [NSArray arrayWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"friends.plist" ofType:nil]];
     
        
        // 调用第三方的MJExtion实现字典转模型  这个API可以直接将plist文件转化为模型数组
        
        NSArray *tempArray = [FriendGrounpModel objectArrayWithFile:[[NSBundle mainBundle] pathForResource:@"friends.plist" ofType:nil]];
        
        
//        NSArray *friends = [FriendGrounpModel objectArrayWithKeyValuesArray:array];
        
        _friendGrounp = tempArray;
        
    }
    
    return _friendGrounp;

}

@end
