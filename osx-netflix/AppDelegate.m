//
//  AppDelegate.m
//  osx-netflix
//
//  Created by Juanca on 3/23/15.
//  Copyright (c) 2015 zsyslog. All rights reserved.
//

#import "AppDelegate.h"

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
    
    
    [_webView setFrameLoadDelegate:self];
    
    NSURL *url = [NSURL URLWithString:@"http://www.netflix.com/Login"];
    NSURLRequest *urlRequest = [NSURLRequest requestWithURL:url];
    [[[self webView] mainFrame] loadRequest:urlRequest];
    
    
    //   NSRect screenRect = NSMakeRect(0.f, 0.f, 1240.f, 830.f); 
    // ---- Detect screen size ----- //
    NSRect screenRect;
    NSArray *screenArray = [NSScreen screens];
    NSUInteger screenCount = [screenArray count];
    for (unsigned index  = 0; index < screenCount; index++) {
        NSScreen *screen = [screenArray objectAtIndex: index];
        screenRect = [screen visibleFrame];
    }
    
    // ----- Set window size ---- //
//    [[_window standardWindowButton:NSWindowCloseButton] setHidden:YES];
//    [[_window standardWindowButton:NSWindowMiniaturizeButton] setHidden:YES];
//    [[_window standardWindowButton:NSWindowZoomButton] setHidden:YES];
    [_window setFrame:screenRect display:YES animate:YES];
    [_window setContentView:_webView];

    //NSRect webFrameRect = [[[webFrame frameView] documentView] frame];
    //get the rect of the current webview
    //NSRect webViewRect = [webview frame];
    
    //calculate the new frame
    NSRect newWebViewRect = NSMakeRect(0,
                                       0,
                                       NSWidth(screenRect),
                                       NSHeight(screenRect));
    
    [_webView setFrame:newWebViewRect];
    
    // NSLog(@"Rect: %@",NSStringFromRect(_webView.frame));
    
}


- (BOOL)applicationShouldTerminateAfterLastWindowClosed:(NSApplication *)theApplication {
    return YES;
}

@end
