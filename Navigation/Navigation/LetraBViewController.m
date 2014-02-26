//
//  LetraBViewController.m
//  Navigation
//
//  Created by Vinicius Miana on 2/23/14.
//  Copyright (c) 2014 Vinicius Miana. All rights reserved.
//

#import "LetraBViewController.h"
#import "LetraCViewController.h"

@implementation LetraBViewController

-(void) viewDidLoad {
    [super viewDidLoad];
    self.title=@"B";
    UIBarButtonItem *next = [[UIBarButtonItem alloc]
                             initWithBarButtonSystemItem:UIBarButtonSystemItemFastForward target:self action:@selector(next:)];
    self.navigationItem.rightBarButtonItem=next;
    
    UIButton *botao = [UIButton buttonWithType:UIButtonTypeSystem];
    [botao setTitle:@"B de Blastoise"
           forState:UIControlStateNormal];
    [botao sizeToFit];
    botao.center = self.view.center;
    
    [botao addTarget:self action:@selector(mostrar:) forControlEvents:UIControlEventAllTouchEvents];
    
    [self.view addSubview:botao];
    
}

-(void)next:(id)sender {
    LetraCViewController *proximo = [[LetraCViewController alloc]
                                     initWithNibName:nil
                                     bundle:NULL];
    [self.navigationController pushViewController:proximo
                                         animated:YES];
    
}

-(void)mostrar:(id)sender{
    UIImage *imagemA = [UIImage imageNamed: @"Pokémon_Blastoise_art.png"];
    UIImageView *imagem = [[UIImageView alloc]initWithFrame:CGRectMake(60, 150, 250, 200)];
    imagem.image=imagemA;
    
    [self.view addSubview:imagem];
    
    
}

@end
