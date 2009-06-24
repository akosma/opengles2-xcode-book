//
//  Chapter02AppDelegate.m
//  Chapter02
//
//  Created by Adrian on 6/24/09.
//  Copyright __MyCompanyName__ 2009. All rights reserved.
//

#import "Chapter02AppDelegate.h"
#import "EAGLView.h"

@implementation Chapter02AppDelegate

@synthesize window;
@synthesize glView;

- (void)applicationDidFinishLaunching:(UIApplication *)application {
    
	glView.animationInterval = 1.0 / 60.0;
	[glView startAnimation];
}


- (void)applicationWillResignActive:(UIApplication *)application {
	glView.animationInterval = 1.0 / 5.0;
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
	glView.animationInterval = 1.0 / 60.0;
}


- (void)dealloc {
	[window release];
	[glView release];
	[super dealloc];
}

@end
