//
//  ViewController.m
//  Imaginarium
//
//  Created by Ricardo Batista on 1/19/15.
//  Copyright (c) 2015 XdroneStudio. All rights reserved.
//

#import "ViewController.h"
#import "ImageViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    
    ImageViewController *ivc = (ImageViewController *)segue.destinationViewController;
    
    if([segue.identifier isEqualToString:@"photo_1"]){
        ivc.imageURL = [NSURL URLWithString:[NSString stringWithFormat:@"http://www.bimmertoday.de/wp-content/uploads/2014-BMW-M4-Rot-F82-Concept-01.jpg"]];
        ivc.title = @"Front";
    }
    
    if([segue.identifier isEqualToString:@"photo_2"]){
        ivc.imageURL = [NSURL URLWithString:[NSString stringWithFormat:@"http://www.motorward.com/wp-content/images/2014/07/Sakhir-Orange-BMW-M4-1.jpg"]];
        ivc.title = @"Back";
    }
    
    if([segue.identifier isEqualToString:@"photo_3"]){
        ivc.imageURL = [NSURL URLWithString:[NSString stringWithFormat:@"http://assets.nydailynews.com/polopoly_fs/1.1886091.1406754666!/img/httpImage/image.jpg_gen/derivatives/article_970/2015-bmw-m4.jpg"]];
        ivc.title = @"Running";
    }
}

@end
