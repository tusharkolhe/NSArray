//
//  main.m
//  TKNSArray
//
//  Created by Felix ITs 04 on 17/10/16.
//  Copyright © 2016 Tushar. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        
        ////Declearation of NSArray
        
        NSArray *Fruits=@[@"Mango",@"Apple",@"PineApple",@"Banana", @"Cherry",@"Grapes"];
       
        NSLog(@"Fruit in array are:%@", Fruits);
        
        
        NSArray *Flowers=[NSArray arrayWithObjects:@"Rose", @"Jasmine", @"Mogra" ,nil];
        
        NSLog(@"Flowers in array are:%@", [Flowers objectAtIndex:1]);
        

    }
    return 0;
}
