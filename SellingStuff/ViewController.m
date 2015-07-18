//
//  ViewController.m
//  SellingStuff
//
//  Created by NP ECE BME Centre on 18/7/15.
//  Copyright (c) 2015 NP ECE BME Centre. All rights reserved.
//

#import "ViewController.h"
#import "DataModel.h"
#import "ProductDetailsViewController.h"

@interface ViewController () <UITableViewDelegate, UITableViewDataSource>

//@property NSMutableArray *productsArray;
@property DataModel *dataModel;
@property (weak, nonatomic) IBOutlet UILabel *quantityLabel;
@property (weak, nonatomic) IBOutlet UITableView *tableView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    // Create a Product Object
    Product *product1 = [[Product alloc]init];
    product1.brandName = @"Levi's";
    product1.name = @"Blue Jeans";
    product1.quantity = 5;
    
    Product *product2 = [[Product alloc]init];
    product2.brandName = @"Baleno";
    product2.name = @"Pink Socks";
    product2.quantity = 10;
    
    Product *product3 = [[Product alloc]init];
    product3.name = @"Toshiba Laptop";
    product3.quantity = 2;
    
    Product *product4 = [[Product alloc]init];
    product4.brandName = @"Shimano";
    product4.name = @"Bicycle";
    product4.quantity = 4;
    
    Product *product5 = [[Product alloc]init];
    product5.name = @"Machine Gun";
    product5.quantity = 1;
    
    // default initialising of NSArray
    //self.productsArray = [NSMutableArray arrayWithObjects:product1, product2, product3, product4, product5, nil];
    
    // default initialising Object of Class DataModel
    self.dataModel = [[DataModel alloc]init];
    self.dataModel.products = [NSMutableArray arrayWithObjects:product1, product2, product3, product4, product5, nil];

}

// Default Method to be called upon for TableView
- (NSInteger) tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    //return self.productsArray.count;
    return self.dataModel.products.count;
}

// Default Method to be called upon for TableView
- (UITableViewCell *) tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"MyCell" forIndexPath:indexPath];
    
    // Create a temporary object to access the object stored in the array
    //Product *tmpProduct = [self.productsArray objectAtIndex:indexPath.row];
    // Create a temporary object to access the array stored in the object dataModel
    Product *tmpProduct = [self.dataModel.products objectAtIndex:indexPath.row];
    
    cell.textLabel.text = tmpProduct.name;
    cell.detailTextLabel.text = [NSString stringWithFormat:@"%d",tmpProduct.quantity];
    //cell.detailTextLabel.text = @(tmpProduct.quantity).description;
    
    return cell;
}
- (IBAction)onGetTotalButtonPressed:(UIButton *)sender {
    self.quantityLabel.text = [NSString stringWithFormat:@"%ld",[self.dataModel getTotalCountOfProducts]];
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    ProductDetailsViewController *destinationViewController = segue.destinationViewController;
    UITableViewCell *cell = sender;
    NSIndexPath *indexPath = [self.tableView indexPathForCell: cell];
    
    destinationViewController.product = [self.dataModel.products objectAtIndex:indexPath.row];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
