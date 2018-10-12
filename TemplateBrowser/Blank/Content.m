//
// Please report any problems with this app template to contact@estimote.com
//

#import "Content.h"

@implementation Content

- (instancetype)initWithTitle:(NSString *)title subtitle:(NSString *)subtitle {
    self = [super init];
    
    _title = [title copy];
    _subtitle = [subtitle copy];
    
    return self;
}

@end
