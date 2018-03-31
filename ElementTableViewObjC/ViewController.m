//
//  ViewController.m
//  ElementTableViewObjC
//
//  Created by Ani Adhikary on 19/03/18.
//  Copyright © 2018 Example. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    elements = @[@"Hydrogen", @"Helium", @"Lithium", @"Berrylium", @"Boron"];
}

- (NSInteger)tableView:(nonnull UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return elements.count;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"ElementCell" forIndexPath:indexPath];
    
    cell.textLabel.text = elements[indexPath.row];
    return cell;
}

@end
