import { Component, ElementRef, ViewChild } from '@angular/core';

@Component({
  selector: 'app-demo',
  templateUrl: './demo.component.html',
  styleUrls: ['./demo.component.css'],
})
export class DemoComponent {
  @ViewChild('myTextInput') textEl: ElementRef | undefined;

  onPress() {
    console.log(this.textEl?.nativeElement.value);
  }
}
