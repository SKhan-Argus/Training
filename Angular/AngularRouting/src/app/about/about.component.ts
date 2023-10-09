import { Component } from '@angular/core';
import { ActivatedRoute, Router } from '@angular/router';

@Component({
  selector: 'app-about',
  templateUrl: './about.component.html',
  styleUrls: ['./about.component.css'],
})
export class AboutComponent {
  constructor(private router: Router, private activatedRoute: ActivatedRoute) {}

  contactUs() {
    console.log(this.activatedRoute);

    this.router.navigate(['contact'], { relativeTo: this.activatedRoute });
  }
}
