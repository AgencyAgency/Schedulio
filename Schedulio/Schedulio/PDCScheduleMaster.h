//
//  PDCScheduleMaster.h
//  Schedulio
//
//  Created by Kyle Oba on 10/30/13.
//  Copyright (c) 2013 Kyle Oba. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface PDCScheduleMaster : NSObject <UITableViewDataSource, UITableViewDelegate>
- (id)courseAtRow:(NSUInteger)row;
@end
