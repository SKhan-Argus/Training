import { Component, OnInit } from '@angular/core';
import { Observable } from 'rxjs';

@Component({
  selector: 'app-root',
  templateUrl: './app.component.html',
  styleUrls: ['./app.component.css'],
})
export class AppComponent implements OnInit {
  title = 'AngularObservable';

  myObservable = new Observable((observer) => {
    console.log('observable starts');
    observer.next('1');
    observer.next('2');
    observer.next('3');
  });

  ngOnInit(): void {
    this.myObservable.subscribe((val) => {
      console.log(val);
    });
  }
}
