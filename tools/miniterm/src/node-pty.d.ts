declare module "node-pty" {
  export interface IDisposable {
    dispose(): void;
  }

  export interface IExitEvent {
    exitCode: number;
    signal?: number | string;
  }

  export interface IPty {
    readonly pid: number;
    readonly process: string;
    readonly cols: number;
    readonly rows: number;
    onData(callback: (data: string) => void): IDisposable;
    onExit(callback: (event: IExitEvent) => void): IDisposable;
    write(data: string): void;
    resize(cols: number, rows: number): void;
    kill(signal?: string): void;
  }

  export interface IPtyForkOptions {
    name?: string;
    cols?: number;
    rows?: number;
    cwd?: string;
    env?: Record<string, string>;
    encoding?: string;
  }

  export function spawn(file: string, args?: string[] | string, options?: IPtyForkOptions): IPty;
}
