import { Pipe, PipeTransform } from '@angular/core';

@Pipe({
  name: 'camelcase',
})
export class CamelcasePipe implements PipeTransform {
  transform(value: any, ...args: unknown[]): unknown {
    return value + value;
  }
}
