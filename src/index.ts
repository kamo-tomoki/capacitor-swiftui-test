import { registerPlugin } from '@capacitor/core';

import type { SwiftUITestPlugin } from './definitions';

const SwiftUITest = registerPlugin<SwiftUITestPlugin>('SwiftUITest', {
  web: () => import('./web').then(m => new m.SwiftUITestWeb()),
});

export * from './definitions';
export { SwiftUITest };
