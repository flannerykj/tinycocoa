// gcc -framework Foundation -x objective-c ./main.m ; ./a.out ; echo $?

#import <Foundation/Foundation.h>

int main(int argc, char** argv)
{
  NSLog(@"Testing");
  id pool = [NSAutoreleasePool new];
  NSLog(@"%@", [ [NSProcessInfo processInfo] arguments]);
  [pool drain];
  return 0;
}
