//
//  ViewController.m
//  Counter
//
//  Created by Takeshi Bingo on 2013/07/20.
//  Copyright (c) 2013年 Takeshi Bingo. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController {
    int count;
    
    NSString *countLabelText;
    
    IBOutlet UILabel *countLabel;
    
    IBOutlet UIButton *plus;
    IBOutlet UIButton *minus;
    IBOutlet UIButton *reset;
}

-(IBAction)plusPushed:(id)sender {
    count = count + 1;
    countLabelText = [NSString stringWithFormat:@"%d",count];
    [countLabel setText:countLabelText];
    if (count >= 0 && count <10) {
        countLabel.textColor = [UIColor whiteColor];
    
    }else if(count >= 10 && count < 20)
    {
        countLabel.textColor = [UIColor greenColor];
    
    }else if (count >=20 && count <30)
    {
        countLabel.textColor = [UIColor yellowColor];
    } else {
        countLabel.textColor = [UIColor redColor];
    }
    
    if (count % 3 == 0) {
        countLabelText = @"さん";
        [countLabel setText:countLabelText];
      //  countLabel.minimumScaleFactor = 0.5f;
        countLabel.adjustsFontSizeToFitWidth=YES;
    }
     
    
        
}

-(IBAction)minusPushed:(id)sender{
    if (count > 0) {
        count = count - 1;
    }
    countLabelText = [NSString stringWithFormat:@"%d",count];
    [countLabel setText:countLabelText];
    if (count >= 0 && count <10) {
        countLabel.textColor = [UIColor whiteColor];
        
    }else if(count >= 10 && count < 20)
    {
        countLabel.textColor = [UIColor greenColor];
        
    }else if (count >=20 && count <30)
    {
        countLabel.textColor = [UIColor yellowColor];
    } else {
        countLabel.textColor = [UIColor redColor];
        
    }
    if (count % 3 == 0) {
        countLabelText = @"さん";
        [countLabel setText:countLabelText];
        //  countLabel.minimumScaleFactor = 0.5f;
        countLabel.adjustsFontSizeToFitWidth=YES;
    }
    
}

-(IBAction)resetPushed:(id)sender {
    count = 0;
    countLabelText = [NSString stringWithFormat:@"%d",count];
    [countLabel setText:countLabelText];
    countLabel.textColor = [UIColor whiteColor];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    count = 0;
    

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
