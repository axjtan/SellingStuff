//
//  DataModel.h
//  SellingStuff
//
//  Created by NP ECE BME Centre on 18/7/15.
//  Copyright (c) 2015 NP ECE BME Centre. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Product.h"

@interface DataModel : NSObject

@property NSMutableArray *products;

- (NSInteger) getTotalCountOfProducts;

@end
