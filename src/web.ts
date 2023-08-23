import { WebPlugin } from '@capacitor/core';

import type { SwiftUITestPlugin } from './definitions';

export class SwiftUITestWeb extends WebPlugin implements SwiftUITestPlugin {
  async show(): Promise<void> {
    return Promise.reject('web is not supported');
  }
}
