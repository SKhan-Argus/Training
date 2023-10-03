import { Component } from '@angular/core';

@Component({
  selector: 'app-products',
  templateUrl: './products.component.html',
  styleUrls: ['./products.component.css'],
})
export class ProductsComponent {
  products = [
    { id: 1, name: 'iPhone15', color: 'Red', available: 'y', image: '' },
    { id: 2, name: 'iPhone15', color: 'Yellow', available: 'y', image: '' },
    { id: 3, name: 'iPhone15', color: 'Black', available: 'n', image: '' },
    { id: 4, name: 'iPhone15', color: 'White', available: 'n', image: '' },
    { id: 5, name: 'iPhone15', color: 'Purple', available: 'y', image: '' },
  ];
}
