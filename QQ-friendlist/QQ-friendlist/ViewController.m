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


@interface ViewController ()


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

-(NSArray *)friendGrounp
{
    if (_friendGrounp == nil) {
        
        _friendGrounp = [FriendGrounpModel objectArrayWithFilename:@"friends.plist"];
    }

    return _friendGrounp;
    
}
@end
