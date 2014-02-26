//
//  LetraAViewController.m
//  Navigation
//
//  Created by Vinicius Miana on 2/23/14.
//  Copyright (c) 2014 Vinicius Miana. All rights reserved.
//

#import "LetraAViewController.h"
#import "LetraBViewController.h"

@implementation LetraAViewController



-(void) viewDidLoad {
    [super viewDidLoad];
    //tentando usar um contador para mudar o titulo sem precisar crias 26 viewcontrollers
//    cont=0;
//    char c = 65 + cont;
//    NSString *tittle = [NSString stringWithFormat:@"%c",c];
//    self.title = tittle;
    self.title =@"A";
    UIBarButtonItem *next = [[UIBarButtonItem alloc]
                             initWithBarButtonSystemItem:UIBarButtonSystemItemFastForward target:self action:@selector(next:)];
    self.navigationItem.rightBarButtonItem=next;
    
    UIButton *botao = [UIButton buttonWithType:UIButtonTypeSystem];
    [botao setTitle:@"A de Arcanine"
     forState:UIControlStateNormal];
    [botao sizeToFit];
    botao.center = self.view.center;
    
    [botao addTarget:self action:@selector(mostrar:) forControlEvents:UIControlEventAllTouchEvents];
    
    [self.view addSubview:botao];
    
 
}


-(void)next:(id)sender {
    
    LetraAViewController *proximo = [[LetraAViewController alloc]
                                              initWithNibName:nil
                                            bundle:NULL];
    [self.navigationController pushViewController:proximo
                                         animated:YES];
//    cont=cont+1;
    
}

-(void)mostrar:(id)sender{
    
    
    UIImage *imagemA = [UIImage imageNamed: @"arca.png"];
    UIImageView *imagem = [[UIImageView alloc]initWithFrame:CGRectMake(60, 150, 250, 200)];
    imagem.image=imagemA;
    
    
    
    [self.view addSubview:imagem];
    
    
}

//+(LetraAViewController *)contador{
//    LetraAViewController *instancia= nil;
//    
//    if(!instancia){
//        instancia=[[super allocWithZone:nil]init];
//    }
//    
//    return instancia;
//}
//
//
//+(id)allocWithZone:(struct _NSZone *)zone{
//    return [self contador];
//}
//
@end
