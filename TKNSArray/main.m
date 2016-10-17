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
        
        ////Compareing Two arrays
        
        NSArray *Fruits1=@[@"Mango",@"Apple",@"PineApple",@"Banana"];

        if([Fruits isEqualToArray:Fruits1])
        {
            NSLog(@"Both Arrays are Same!!!!");
        }else{
            NSLog(@"We do not found Same content in both arrays");
        }
        
        
        ////Sorting Array
        
        NSArray *germanMakes = @[@"Mercedes-Benz", @"BMW", @"Porsche",
                                 @"Opel", @"Volkswagen", @"Audi"];
        NSArray *sortedMakes = [germanMakes sortedArrayUsingComparator:
                                ^NSComparisonResult(id obj1, id obj2) {
                                    if ([obj1 length] < [obj2 length]) {
                                        return NSOrderedAscending;
                                    } else
                                        if ([obj1 length] > [obj2 length]) {
                                            return NSOrderedDescending;
                                        } else {
                                            return NSOrderedSame;
                                        }
                                }];
        NSLog(@"%@", sortedMakes);

    }
    return 0;
}
