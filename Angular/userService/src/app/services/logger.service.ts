import { Injectable } from '@angular/core';

@Injectable({
  providedIn: 'root',
})
export class LoggerService {
  constructor() {}

  logMessage(name: string, status: string) {
    console.log(name + ' ' + status);
  }
}
