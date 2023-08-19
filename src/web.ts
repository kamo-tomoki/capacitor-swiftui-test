import { WebPlugin } from '@capacitor/core';

import type { SwiftUITestPlugin } from './definitions';

export class SwiftUITestWeb extends WebPlugin implements SwiftUITestPlugin {
  async echo(options: { value: string }): Promise<{ value: string }> {
    console.log('ECHO', options);
    return options;
  }
}
