//
//  Cell.m
//  DNC
//
//  Created by Admin on 2/23/13.
//  Copyright (c) 2013 Admin. All rights reserved.
//

#import "Cell.h"

@implementation Cell
-(id) init {
    self=[super init];
    if (self) {
        latter= [[NSArray alloc] initWithObjects:@"A",@"T",@"G",@"C",nil];        
        DNA= [[NSMutableArray alloc] init];
        for (i=0;i<=9;i++)
        {
            //randomNumber = (int) (arc4random() %3);
            [DNA addObject:[latter objectAtIndex:random()%4]];
        }
    }
    return self;
}
-(void) print {
    NSLog(@"%@", DNA);
}
-(int) hammingDistance:(Cell *)DNA2 {
    hD = 0;
    for (i=0; i<=9; i++) {
        if([DNA objectAtIndex:i]!=[[DNA2 getDNA] objectAtIndex:i])
        {
            hD++;
    }
    }
    return hD;
}

-(NSMutableArray *) getDNA {
    return DNA;
    
}

@end
