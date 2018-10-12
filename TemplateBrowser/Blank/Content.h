//
// Please report any problems with this app template to contact@estimote.com
//

#import <Foundation/Foundation.h>

@interface Content : NSObject

@property (strong, nonatomic, readonly) NSString *title;
@property (strong, nonatomic, readonly) NSString *subtitle;

- (instancetype)initWithTitle:(NSString *)title subtitle:(NSString *)subtitle;

@end
