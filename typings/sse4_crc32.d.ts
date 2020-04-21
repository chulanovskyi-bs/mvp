import Stream from 'stream';

declare module 'sse4_crc32' {
  export function fromStream(stream: Stream.Readable, crc?: number): Crc32WritableStream;
  export function calculate(source: string | Buffer): number;

  export interface Crc32WritableStream extends Stream.Writable {
    crc: number;
  }
}
