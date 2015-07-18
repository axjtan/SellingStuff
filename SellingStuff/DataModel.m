//
//  DataModel.m
//  SellingStuff
//
//  Created by NP ECE BME Centre on 18/7/15.
//  Copyright (c) 2015 NP ECE BME Centre. All rights reserved.
//

#import "DataModel.h"

@implementation DataModel

- (NSInteger) getTotalCountOfProducts {
    int count = 0;
    for (Product *eachProduct in self.products) {
        // count = count + eachProduct.quantity;
        count += eachProduct.quantity;
    }
    return count;
}

@end
