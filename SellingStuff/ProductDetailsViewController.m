//
//  ProductDetailsViewController.m
//  SellingStuff
//
//  Created by NP ECE BME Centre on 18/7/15.
//  Copyright (c) 2015 NP ECE BME Centre. All rights reserved.
//

#import "ProductDetailsViewController.h"

@interface ProductDetailsViewController ()
@property (weak, nonatomic) IBOutlet UILabel *productNameLabel;
@property (weak, nonatomic) IBOutlet UILabel *productQuantityLabel;

@end

@implementation ProductDetailsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.productNameLabel.text = self.product.name;
    self.productQuantityLabel.text = [NSString stringWithFormat:@"%d",self.product.quantity];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
