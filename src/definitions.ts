export interface SwiftUITestPlugin {
  echo(options: { value: string }): Promise<{ value: string }>;
}
