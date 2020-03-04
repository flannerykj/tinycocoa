// gcc -framework Cocoa -x objective-c -o MinimalistCocoaApp ./main.m

#import <Foundation/Foundation.h>
#import <Cocoa/Cocoa.h>

int main() {
  [NSAutoreleasePool new];
  [NSApplication sharedApplication];
  [NSApp setActivationPolicy:NSApplicationActivationPolicyRegular];

  id appName = [[NSProcessInfo processInfo] processName];

  // create menubar
  id menubar = [[NSMenu new] autorelease];

  // populate app menu
  id menuItem = [[NSMenuItem new] autorelease];
  id submenu = [[NSMenu new] autorelease];
  id quitMenuItem = [[[NSMenuItem alloc] initWithTitle:@"Quit" action:@selector(terminate:) keyEquivalent:@"q"] autorelease];
  [submenu addItem:quitMenuItem];
  [menuItem setSubmenu:submenu];
  [menubar addItem:menuItem];

  // populate menubar: edit menu
  menuItem = [[NSMenuItem new] autorelease];
  submenu = [[NSMenu new] autorelease];
  id cutMenuItem = [[[NSMenuItem alloc] initWithTitle:@"Cut" action:@selector(cut:) keyEquivalent:@"x"] autorelease];
  [submenu addItem:cutMenuItem];
  [menuItem setSubmenu:submenu];
  [menubar addItem:menuItem];

  [NSApp setMainMenu:menubar];

  id window = [[[NSWindow alloc] initWithContentRect:NSMakeRect(0, 0, 200, 200)
  styleMask:NSWindowStyleMaskTitled backing:NSBackingStoreBuffered defer:NO]
  autorelease];
  [window cascadeTopLeftFromPoint:NSMakePoint(20,20)];
  [window setTitle:appName];
  [window makeKeyAndOrderFront:nil];
  [NSApp activateIgnoringOtherApps:YES];
  [NSApp run];
}


