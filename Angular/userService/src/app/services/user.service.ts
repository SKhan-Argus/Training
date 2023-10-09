import { Injectable } from '@angular/core';
import { LoggerService } from './logger.service';

@Injectable({
  providedIn: 'root',
})
export class UserService {
  users = [
    { name: 'Sahil', status: 'active' },
    { name: 'Arjun', status: 'inactive' },
    { name: 'Satya', status: 'active' },
  ];

  constructor(private logger: LoggerService) {}

  addUser(username: string, status: string) {
    this.users.push({ name: username, status: status });
    this.logger.logMessage(username, status);
  }
}
