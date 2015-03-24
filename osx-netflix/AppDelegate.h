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

@interface AppDelegate : NSObject <NSApplicationDelegate> 

@property (assign) IBOutlet NSWindow *window;
@property (nonatomic, assign) IBOutlet WebFrame *webFrame;
@property (nonatomic, assign) IBOutlet WebView *webView;

@property NSSize contentMaxSize;

@end

