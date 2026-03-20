import type { CapacitorConfig } from '@capacitor/cli';

const config: CapacitorConfig = {
  appId: 'com.hwill.fhpmfieldvideoguide',
  appName: 'FH PM Field Video Guide',
  webDir: 'app-web',
  bundledWebRuntime: false,
  ios: {
    contentInset: 'always',
    scrollEnabled: true
  }
};

export default config;
