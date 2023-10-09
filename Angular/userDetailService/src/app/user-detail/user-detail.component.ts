import { Component, DoCheck, OnInit } from '@angular/core';
import { UserService } from '../services/user.service';

@Component({
  selector: 'app-user-detail',
  templateUrl: './user-detail.component.html',
  styleUrls: ['./user-detail.component.css'],
})
export class UserDetailComponent implements DoCheck {
  user: any;

  constructor(private userService: UserService) {}

  ngDoCheck(): void {
    this.user = this.userService.user;
  }
}
