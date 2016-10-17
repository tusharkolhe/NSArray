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

        ////Subdividing an array
        NSArray *lastTwo = [Fruits subarrayWithRange:NSMakeRange(2, 3)];
        NSLog(@"%@", lastTwo);
        
        ////Combining arrays
        NSArray *comb= [Fruits arrayByAddingObjectsFromArray:Flowers];
        NSLog(@"%@", comb);
        
        NSArray *roses = @[@"Black Rose", @"White Rose", @"Red Rose", @"Yello Rose"];
        NSLog(@"%@", [roses componentsJoinedByString:@", "]);
        
        
        ////Properties of NSArrays
        NSString *prop1=Fruits.description;
        NSLog(@"Test:%@",prop1);
        
        NSString *prop2=Fruits.firstObject;
        NSLog(@"%@",prop2);
        
        NSString *prop3=Fruits.lastObject;
        NSLog(@"%@",prop3);
        
        NSString *prop4=Fruits.debugDescription;
        NSLog(@"%@",prop4);
        
        int prop5= (int)Fruits.count;
        NSLog(@"%d",prop5);
        
        int prop6=(int)Fruits.hash;
        NSLog(@"%d",prop6);
        

        ////NSMUTABLE Array Declearation
        
        NSMutableArray *planets=[NSMutableArray arrayWithObjects:@"Sun",@"Mercury",@"Vinus",@"Earth",@"Mars", nil];
        
        NSLog(@"%@",planets);
        
        [planets addObject:@"Jupiter"];
        
        NSLog(@"%@",planets);
        
        [planets removeLastObject];
        
        NSLog(@"%@",planets);
        
        ////Adding/Removing/Replacing objects using Index
        
        //Insert
        [planets insertObject:@"Pluto" atIndex:0];
        
        NSLog(@"%@",planets);
        
        //Remove
        [planets removeObjectAtIndex:4];
        
        NSLog(@"%@",planets);
        
        [planets removeObject:@"Mars"];
        
        NSLog(@"%@",planets);
        
        //Replace
        [planets replaceObjectAtIndex:3 withObject:@"Neptune"];
        
        NSLog(@"%@",planets);
        
    }
    return 0;
}
