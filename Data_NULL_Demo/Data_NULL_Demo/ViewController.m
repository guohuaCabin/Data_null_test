//
//  ViewController.m
//  Data_NULL_Demo
//
//  Created by 秦国华 on 2017/3/9.
//  Copyright © 2017年 秦国华. All rights reserved.
//

#import "ViewController.h"
#import "DataModel.h"

@interface ViewController ()
@property(strong,nonatomic)DataModel *model;

@property(strong,nonatomic)NSArray *dataArray;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.dataArray = [[NSArray alloc]init];
    /*
     注：
     1、如果使用直接解析的jsonDic验证json对象为null时报错现象，需要将NullSafe文件先移除。
     2、如果使用jsonModel三方库验证json对象为null时报错现象，需要将NullSafe文件先移除。
     3、如果使用NullSafe验证json对象为null时报错现象，需要使用直接解析的jsonDic。

     */
    NSError *error;
    //本地读取json数据
    NSString *jsonStr = [NSString stringWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"data_null" ofType:@"json"] encoding:0 error:nil];
    NSData *jsonData = [jsonStr dataUsingEncoding:NSUTF8StringEncoding];
    
    NSMutableDictionary *jsonDic = [NSJSONSerialization JSONObjectWithData:jsonData options:NSJSONReadingAllowFragments error:&error];

    if (error) {
        NSLog(@"=====%@",error); 
    }
    
    //jsonModel解析json数据
    DataModel *model = [[DataModel alloc]initWithDictionary:jsonDic error:&error];
    if (error) {
        NSLog(@"model====%@",error);
    }
    
    self.dataArray = model.items;
    //直接获取json数据中msg的值（通过jsonModel）
    NSString *tt = [jsonDic objectForKey:@"msg"];

    NSString *str = @"hehhe";
    if ([self.model.msg isEqualToString:str]) {
        NSLog(@"%@,,,,,str == %@",self.model.msg,str);
    }else{
        NSLog(@"不相等");
        NSLog(@"%@,,,,,str == %@",self.model.msg,str);
    }
 
    if ([self.model.stat isEqualToString:str]) {
        NSLog(@"%@,,,,,str == %@",self.model.stat,str);
    }else{
        NSLog(@"不相等");
        NSLog(@"%@,,,,,str == %@",self.model.stat,str);
    }
    
   
    
    if ([tt isEqual:str]) {
        NSLog(@"%@,,,,,str == %@",tt,str);
    }else{
        NSLog(@"不相等");
    }
    
    if ([tt isEqualToString:str]) {
        NSLog(@"%@,,,,,str == %@",tt,str);
    }else{
        NSLog(@"不相等");
    }
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
