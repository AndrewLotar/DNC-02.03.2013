//
//  Cell.h
//  DNC
//
//  Created by Admin on 2/23/13.
//  Copyright (c) 2013 Admin. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Cell : NSObject {
    NSArray *latter;
    NSMutableArray *DNA;
    int i, randomNumber, hD;
}
-(id) init;
-(void) print;
-(int) hammingDistance: (Cell *) DNA2;
-(NSMutableArray *) getDNA;


@end
