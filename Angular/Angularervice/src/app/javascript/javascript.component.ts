import { Component } from '@angular/core';
import { EnrollServiceService } from '../services/enroll-service.service';

@Component({
  selector: 'app-javascript',
  templateUrl: './javascript.component.html',
  styleUrls: ['./javascript.component.css'],
})
export class JavascriptComponent {
  title = 'Javascript';
  constructor(private enroll: EnrollServiceService) {}

  onEnroll() {
    this.enroll.onEnroll(this.title);
  }
}
