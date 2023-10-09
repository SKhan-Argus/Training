import {
  Component,
  DoCheck,
  Input,
  OnChanges,
  OnInit,
  SimpleChanges,
} from '@angular/core';

@Component({
  selector: 'app-demo',
  templateUrl: './demo.component.html',
  styleUrls: ['./demo.component.css'],
})
export class DemoComponent implements OnInit, OnChanges, DoCheck {
  @Input() inputText: string = 'sahil';

  constructor() {
    console.log('constructor called');
    console.log(this.inputText);
  }

  ngOnInit(): void {
    console.log('ngonint called');
    console.log(this.inputText);
  }

  ngOnChanges(changes: SimpleChanges): void {
    console.log('ngOnchanges called');
    console.log(changes);
  }

  ngDoCheck(): void {
    console.log('docheck called');
  }
}
