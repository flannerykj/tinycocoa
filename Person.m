#import <Foundation/Foundation.h>
#import <Cocoa/Cocoa.h>
#import "Person.h"

@implementation Person: NSObject
- (instancetype)initWithName:(NSString*)name {
  if (self = [super init]) {
    self.name = name;
  }
  return self;
}

- (void)printGreeting:(NSString*)greeting {
  NSLog(@"%@ %@", greeting, self.name);
}

- (NSString*)getGreetingTo:(NSString*)name atTimeOfDay:(NSString*)timeOfDay {
    return [NSString stringWithFormat: @"Hello! %@ its %@", name, timeOfDay];
}

@end
