//
//  ViewController.m
//  STextView
//
//  Created by HAYAKAWA TOMOAKI on 2014/09/25.
//  Copyright (c) 2014年 HAYAKAWA TOMOAKI. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UILabel *note = [UILabel new];
    note.frame = CGRectMake(10, 20, self.view.bounds.size.width-20, 150);
    note.numberOfLines = 6;
    note.text = @"1. scroll to last line.\n 2.tap last line then push Enter.\n 3.Oops. scrolled to top automatically.\n\n * try this code.\n[textView.layoutManager.allowsNonContiguousLayout=NO;]";
    [self.view addSubview:note];
    
    
    
    UITextView *textView = [UITextView new];
    textView.delegate = self;
    textView.frame = CGRectMake(0, self.view.bounds.size.height/3, self.view.bounds.size.width, 100);
    textView.backgroundColor = [UIColor lightGrayColor];
    textView.font = [UIFont systemFontOfSize:20];
    textView.text = @"ABC\nD\nD\nD\nD\nD\nD\nD\nEFG";

    // try this code.
    // textView.layoutManager.allowsNonContiguousLayout = NO;

    [self.view addSubview:textView];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
