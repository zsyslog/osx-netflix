//
//  AppDelegate.h
//  osx-netflix
//
//  Created by Juanca on 3/23/15.
//  Copyright (c) 2015 zsyslog. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import <WebKit/WebKit.h>
@import AppKit;

@interface AppDelegate : NSObject <NSApplicationDelegate> {
    WebView *webview;
    WebFrame *webFrame;
}

@property (assign) IBOutlet NSWindow *window;
@property (retain, nonatomic) IBOutlet WebView *webView;

@property NSSize contentMaxSize;

@end

