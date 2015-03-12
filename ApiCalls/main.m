//
//  main.m
//  ApiCalls
//
//  Created by George Krajan Godas on 2/26/15.
//  Copyright (c) 2015 George Krajan Godas. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "RestCall.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        RestCall *restCall = [[RestCall alloc]init];
        
        //NSString *url = @"https://www.petrobraspremmia.com.br/api/vitrine/TroqueSeusPontos/deslogado";
        NSString *url = @"https://www.petrobraspremmia.com.br/wp-admin/admin-ajax.php?action=get_ofertas&subcategorias=-1&uf=&pontuacaoMaxima=&busca=";
        
        NSData *data = [restCall callApi: url];
    }
    return 0;
}
