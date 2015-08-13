//
//  PlayersDetailViewController.m
//  Ratings
//
//  Created by dmi on 12/08/15.
//  Copyright (c) 2015 dmi. All rights reserved.
//

#import "PlayersDetailViewController.h"
#import "Player.h"


@interface PlayersDetailViewController ()

@end

@implementation PlayersDetailViewController

{

    NSString *_game;

}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
    
    
    self.detailLabel.text = _game;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//#pragma mark - Table view data source
//
//- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
//#warning Potentially incomplete method implementation.
//    // Return the number of sections.
//    return 0;
//}
//
//- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
//#warning Incomplete method implementation.
//    // Return the number of rows in the section.
//    return 0;
//}

/*
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:<#@"reuseIdentifier"#> forIndexPath:indexPath];
    
    // Configure the cell...
    
    return cell;
}
*/

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


#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
    if([segue.identifier isEqualToString:@"PickGame"])
    {
        GamePickerViewController *gamePickerViewController = segue.destinationViewController;
        gamePickerViewController.delegate = self;
        gamePickerViewController.game = _game;
    
    }
    
}


-(IBAction)cancel:(id)sender
{

    [self.delegate playersDetailViewControllerDidCancel:self];

}

-(IBAction)save:(id)sender{

    Player *player = [[Player alloc]init];
    player.name = self.nameTextField.text;
    player.game =_game;
    player.rating = 1;
    
    [self.delegate playersDetailViewController:self didAddPlayer : player];
}


-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
if(indexPath.section == 0)
{
    [self.nameTextField becomeFirstResponder];

}

}

-(id)initWithCoder:(NSCoder *)aDecoder
{

if((self = [super initWithCoder:aDecoder]))
{

    NSLog(@"Init PlayersDetailViewController");

}
    return self;
}

-(void)dealloc
{
    NSLog(@"dealloc PlayersDetalViewController");
}

-(void)gamePickerViewController:(GamePickerViewController *)controller didSelectGame:(NSString *)game
{

    _game = game;
    self.detailLabel.text = _game;
    [self.navigationController popViewControllerAnimated:YES];

}


@end
