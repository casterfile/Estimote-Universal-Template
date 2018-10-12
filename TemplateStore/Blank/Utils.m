//
// Please report any problems with this app template to contact@estimote.com
//

#import "Utils.h"

@implementation Utils

+ (NSString *)colorForColorName:(NSString *)colorName {
    //    if ([colorName isEqualToString:@"ice"]) {
    //        return [UIColor colorWithRed:109/255.0 green:170/255.0 blue:199/255.0 alpha:1.0];
    //    } else if ([colorName isEqualToString:@"blueberry"]) {
    //        return [UIColor colorWithRed:36/255.0 green:24/255.0 blue:93/255.0 alpha:1.0];
    //    } else if ([colorName isEqualToString:@"candy"]) {
    //        return [UIColor colorWithRed:219/255.0 green:122/255.0 blue:167/255.0 alpha:1.0];
    //    } else if ([colorName isEqualToString:@"mint"]) {
    //        return [UIColor colorWithRed:155/255.0 green:186/255.0 blue:160/255.0 alpha:1.0];
    //    } else if ([colorName isEqualToString:@"beetroot"]) {
    //        return [UIColor colorWithRed:84/255.0 green:0/255.0 blue:61/255.0 alpha:1.0];
    //    } else if ([colorName isEqualToString:@"lemon"]) {
    //        return [UIColor colorWithRed:195/255.0 green:192/255.0 blue:16/255.0 alpha:1.0];
    //    } else {
    //        return [UIColor colorWithRed:160/255.0 green:169/255.0 blue:172/255.0 alpha:1.0];
    //    }
    
    if ([colorName isEqualToString:@"ice"]) {
        return @"https://www.google1.com/";
    } else if ([colorName isEqualToString:@"blueberry"]) {
        return @"https://www.google2.com/";
    } else if ([colorName isEqualToString:@"candy"]) {
        return @"https://www.google3.com/";
    } else if ([colorName isEqualToString:@"mint"]) {
        return @"https://www.google4.com/";
    } else if ([colorName isEqualToString:@"beetroot"]) {
        return @"https://www.google5.com/";
    } else if ([colorName isEqualToString:@"lemon"]) {
        return @"https://www.google6.com/";
    } else {
        return @"None";
    }
}

@end
