// Person.h
#import <Foundation/Foundation.h>

@interface Person : NSObject

@property (assign) NSString *name;
- (instancetype)initWithName:(NSString*)name;
- (void)printGreeting:(NSString*)greeting;
- (NSString*)getGreetingTo:(NSString*)name atTimeOfDay:(NSString*) timeOfDay;

@end
