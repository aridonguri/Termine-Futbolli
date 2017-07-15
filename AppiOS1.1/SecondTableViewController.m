//
//  SecondTableViewController.m
//  AppiOS1.1
//
//  Created by Aridon on 7/9/17.
//  Copyright © 2017 Aridon. All rights reserved.
//

#import "SecondTableViewController.h"

@interface SecondTableViewController ()

@end

@implementation SecondTableViewController
{
    NSArray *princi;
    NSArray *arti;
    NSArray *arena;
    NSArray *mani;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    princi = [NSArray arrayWithObjects:@"Prishtine",@"Rr.Avni Hajdini",@"20 euro nata",@"10 euro dita", nil];
    arti = [NSArray arrayWithObjects:@"Prishtine",@"Lagjja Sptalit",@"20 euro nata",@"10 euro dita", nil];
    arena = [NSArray arrayWithObjects:@"Ferizaj",@"Rr. Xhevat Guri",@"20 euro nata",@"10 euro dita", nil];
    mani = [NSArray arrayWithObjects:@"Kacanik",@"Nikaj",@"20 euro nata",@"10 euro dita", nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {

    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    if ([_fushaName isEqualToString:@"Princi"]) {
        return [princi count];
    }
    else if([_fushaName isEqualToString:@"Arti"])
    {
        return [arti count];
    }
    else if([_fushaName isEqualToString:@"Arena"])
    {
        return [arena count];
    }
    else if([_fushaName isEqualToString:@"Mani"])
    {
        return [mani count];
    }    return 0;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString	*simpleTableIdentifier=@"Stadiumet2Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:simpleTableIdentifier];
    
    // Configure the cell...
    if(cell==nil)
    {
        cell=[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:simpleTableIdentifier];
    }
    if([_fushaName isEqualToString:@"Princi"])
    {
        cell.textLabel.text=[princi objectAtIndex:indexPath.row];
    }
    else  if([_fushaName isEqualToString:@"Arti"])
    {
        cell.textLabel.text=[arti objectAtIndex:indexPath.row];
    }
    else  if([_fushaName isEqualToString:@"Arena"])
    {
        cell.textLabel.text=[arena objectAtIndex:indexPath.row];
    }
    else  if([_fushaName isEqualToString:@"Mani"])
    {
        cell.textLabel.text=[mani objectAtIndex:indexPath.row];
    }
    return cell;
}




/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
