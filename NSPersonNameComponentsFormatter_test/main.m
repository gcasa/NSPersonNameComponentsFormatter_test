//
//  main.m
//  NSPersonNameComponentsFormatter_test
//
//  Created by Gregory John Casamento on 9/16/19.
//  Copyright © 2019 Gregory John Casamento. All rights reserved.
//

#import <Foundation/Foundation.h>

#import <Foundation/Foundation.h>

/* Show whether test was passed */
void passTest(BOOL flag,
              NSString *msg)
{
    if(flag == YES)
    {
        NSLog(@"PASS: %@",msg);
    }
    else
    {
        NSLog(@"FAIL: %@",msg);
    }
}

/* Run all tests */
void runTests()
{
    NSPersonNameComponents *pnc = [[NSPersonNameComponents alloc] init];
    [pnc setGivenName: @"Gregory"];
    [pnc setMiddleName: @"John"];
    [pnc setFamilyName: @"Casamento"];
    [pnc setNameSuffix: @"PhD"];
    [pnc setNamePrefix: @"Dr."];
    
    NSPersonNameComponentsFormatter *fmt = [[NSPersonNameComponentsFormatter alloc] init];
    NSPersonNameComponents *pnc2 = [fmt personNameComponentsFromString:
                                    @"Dr. Gregory John Casamento PhD"];
    passTest([[pnc givenName] isEqualToString:
              [pnc2 givenName]], @"First name matches");
    passTest([[pnc middleName] isEqualToString:
              [pnc2 middleName]], @"Middle name matches");
    passTest([[pnc familyName] isEqualToString:
              [pnc2 familyName]], @"Family name matches");
    passTest([[pnc nameSuffix] isEqualToString:
              [pnc2 nameSuffix]], @"Suffix name matches");
    passTest([[pnc namePrefix] isEqualToString:
              [pnc2 namePrefix]], @"Prefix name matches");
}

int main(int argc, const char * argv[]) {
    @autoreleasepool
    {
        runTests();
    }
    return 0;
}
