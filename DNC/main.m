//
//  main.m
//  DNC
//
//  Created by Admin on 2/23/13.
//  Copyright (c) 2013 Admin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Cell.h"

@interface Cell (mutator)
-(void) mutate: (int) x;
@end

@implementation Cell (mutator)

-(void) mutate: (int)x {
    NSMutableArray *change = [[NSMutableArray alloc] init];
    for (i=0;i<=9;i++)
    {
        [change addObject:@"0"];
    }
    i=0;
    while (i<x)
    {
        
        int randomCell=(arc4random() %10);
        if ([[change objectAtIndex: randomCell] isEqual:@"0"])
        {
            //randomNumber = (arc4random() %4);
            NSString *nukleotid;
            nukleotid =[latter objectAtIndex: random()%4];
            /*switch (randomNumber) {
                case 0:
                   nukleotid=@"A";
                    break;
                case 1:
                    nukleotid=@"T";
                    break;
                case 2:
                    nukleotid=@"G";
                    break;
                case 3:
                    nukleotid=@"C";
                    break;
                default:
                    break;
            }*/
            if (![[DNA objectAtIndex: randomCell] isEqual:nukleotid])
                [DNA replaceObjectAtIndex:randomCell withObject:nukleotid];
            [change replaceObjectAtIndex:randomCell withObject:@"1"];
            i++;

        }
    }
}
@end

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        Cell *cellFirst;
        cellFirst = [[Cell alloc] init];
        
        Cell *cellSecond;
        cellSecond = [[Cell alloc] init];
        
         NSLog(@"Before mutation");
        
        [cellFirst print];
        [cellSecond print];
        int h=[cellFirst hammingDistance:cellSecond];
        NSLog(@"Hd=%i",h);
        
        NSLog(@"How many mutate?");
        int kol=0;
        scanf("%i",&kol);
        
        [cellFirst mutate: kol];
        [cellSecond mutate: kol];
        
        NSLog(@"After mutation");
        
        [cellFirst print];
        [cellSecond print];
        h=[cellFirst hammingDistance:cellSecond];
        NSLog(@"Hd=%i",h);
    }
    return 0;
}

