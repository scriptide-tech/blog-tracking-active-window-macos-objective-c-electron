#import <Cocoa/Cocoa.h>

#import <stdio.h>
#import <napi.h>
#import "./activeWindowObserver.h"

void StartActiveWindowObserverMethod(const Napi::CallbackInfo& info) {
  Napi::Env env = info.Env();
  initActiveWindowObserver(env, info[0].As<Napi::Function>());
}

void StopActiveWindowObserverMethod(const Napi::CallbackInfo& info) {
  Napi::Env env = info.Env();
  stopActiveWindowObserver(env);
}

Napi::Object NativeWindows(Napi::Env env, Napi::Object exports) {
  exports.Set(Napi::String::New(env, "startActiveWindowObserver"),
              Napi::Function::New(env, StartActiveWindowObserverMethod));
  exports.Set(Napi::String::New(env, "stopActiveWindowObserver"),
              Napi::Function::New(env, StopActiveWindowObserverMethod));
  return exports;
}

NODE_API_MODULE(nativeWindows, NativeWindows)


