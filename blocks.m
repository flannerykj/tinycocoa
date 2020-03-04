#import <Foundation/Foundation.h>
#import <Cocoa/Cocoa.h>

int main() {
  NSString* (^printGreeting)(NSString *) = ^ (NSString *name) {
    return [NSString stringWithFormat:@"long live %@", name];
  };
  NSLog(@"%@", printGreeting(@"Flannery"));
}

