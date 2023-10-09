import { Injectable } from '@angular/core';

@Injectable({
  providedIn: 'root',
})
export class EnrollServiceService {
  constructor() {}

  onEnroll(title: string) {
    alert('Thanks for enrolling ' + title + ' course.');
  }
}
