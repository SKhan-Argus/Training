import { Component } from '@angular/core';

@Component({
  selector: 'app-root',
  templateUrl: './app.component.html',
  styleUrls: ['./app.component.css'],
})
export class AppComponent {
  title = 'lifeCycleHook';

  inputText: string = '';
  onSubmit(element: HTMLInputElement) {
    this.inputText = element.value;
  }
  getInputText() {
    return this.inputText;
  }
}
