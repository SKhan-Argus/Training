import { Component } from '@angular/core';

@Component({
  selector: 'app-search',
  templateUrl: './search.component.html',
  styleUrls: ['./search.component.css'],
})
export class SearchComponent {
  searchText: string = '';
  changeSearchValue(eventData: Event) {
    this.searchText = (<HTMLInputElement>eventData.target).value;
  }
}
