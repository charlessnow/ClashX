//
//  main.m
//  ProxyConfigHelper
//
//  Created by yichengchen on 2019/8/16.
//  Copyright © 2019 west2online. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ProxyConfigHelper.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        [[NSProcessInfo processInfo] disableSuddenTermination];
        [[ProxyConfigHelper new] run];
        NSLog(@"ProxyConfigHelper exit");
    }
    return 0;
}
