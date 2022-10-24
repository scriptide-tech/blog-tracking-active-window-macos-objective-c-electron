interface Addon {
  startActiveWindowObserver: (callback: (activeWindow: string) => void) => void;
  stopActiveWindowObserver: () => void;
}

// eslint-disable-next-line
const addon: Addon = require('./build/Release/nativeWindows.node');

class NativeWindows {
  /**
   * Subscribes to active window changes
   */
  public startActiveWindowObserver(callback: (window: string | null) => void) {
    addon.startActiveWindowObserver(callback);
  }

  public stopActiveWindowObserver() {
    addon.stopActiveWindowObserver();
  }
}

export const nativeWindows = new NativeWindows();
