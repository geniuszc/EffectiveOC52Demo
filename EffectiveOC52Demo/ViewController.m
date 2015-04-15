//
//  ViewController.m
//  EffectiveOC52Demo
//
//  Created by geniuszc on 15/4/15.
//  Copyright (c) 2015年 Mattservice. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}
#pragma mark - "了解OC语言的起源"
-(void)chapter1{
    //OC是消息结构，非函数调用
    /*消息结构
    NSObject *object = [NSObject new];
    [object performWith:parameter1 and:parameter2];
     */
    /*函数调用
     NSobject *object = new object;
     obj->perform(parameter1,parameter2);
     */
}
#pragma mark - "在类的头文件中尽量少引入其他头文件"
-(void)chapter2{
    //如果在引用某一类，不需要知道该类的全部细节
    //用@class 类名;代替#import "类名";
    
}
#pragma mark - "多用字面量语法，少用与之等价的方法"
-(void)chapter3{
    NSNumber *someNumber = @1;
    //NSNumber *someNumber = [NSnumber numberWithInt:1];
    int x=5;
    float y= 6.32f;
    NSNumber *expressionNumber = @(x*y);
    NSArray *animals =@[@"cat",@"dog"];
    //NSArray *animals = [NSArray arrayWithObjects:@"cat",@"dog",nil];
    NSString *dog = animals[1];
    //NSString *dog =[animals objectAtIndex:1];
    /*
    NSArray *arrayA = [NSArray arrayWithObjects:object1,object2,object3, nil];
    NSArray *arrayB = @[object1,object2,object3];
    如上创建方法，如果object2为nil,arrayA会创建出来，但只有object1一个对象，而arrayB会抛出异常
     */
    NSDictionary *personData = @{@"firstName":@"Matt",@"lastName":@"Galloway",@"age":@28};
    //NSDictionary *personData = [NSDictionary dictionaryWithObjectsAndKeys:@"MATT",@"firstName",@"Galloway",@"lastName",[NSNumber numberWithInt:28],@"age", nil];
    //创建方法如数组，字面量语法会抛出异常
    NSString *lastName = personData[@"lastName"];
    //NSString *lastName =[personData objectForKey:@"lastName"];
    
    /*可变数组与字典
    mutableArray[1]=@"dog";
     -->[mutableArray replaceObjectAtIndex:1 withObject:@"dog"];
    mutableDictionary[@"lastName"]=@"Galloway";
     -->[mutableDictionary setObject:@"Gallowat" forKey:@"lastName"];
     */
}
#pragma mark - "多用类型常量，少用#define预处理指令"
-(void)chapter4{
    static const NSTimeInterval KAnitmationDuration =0.3;
    //#define ANIMATION_DURATION 0.3
    
    /*应该这样写
    //EOCAnimatiedView.h
     #import <UIKit/UIKit.h>
     
     @interface EOCAnimatedView:UIView
     -(void)animate;
     @end
     
     //EOCAnimatedView.m
     #import "EOCAnimatedView.h"
     
     static const NSTimeInterval kAnimationDuration = 0.3;
     @implementation EOCAnimatedView
     -(void)animate{
     [UIView animateWithDuration:kAnimationDuration
                        animations:^(){
                        //Perform animations
                        }];
     }
     @end
     */
    
     

}
@end
