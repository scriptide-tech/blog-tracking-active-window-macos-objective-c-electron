#pragma once
#include <stdio.h>
#include <string>
#include <Cocoa/Cocoa.h>
#include <napi.h>

void initActiveWindowObserver(Napi::Env env, Napi::Function windowCallback);
void stopActiveWindowObserver(Napi::Env env);

@interface ActiveWindowObserver: NSObject
- (id) init;
- (void) dealloc;
- (void) cleanUp;
- (void) removeWindowObserver;
- (void) receiveAppChangeNotification:(NSNotification *) notification;
- (void) getActiveWindow;

@end