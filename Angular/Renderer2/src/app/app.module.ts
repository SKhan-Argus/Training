import { NgModule } from '@angular/core';
import { BrowserModule } from '@angular/platform-browser';
import { HighlightDirective } from './CustomDirective/highlight.directive';
import { AppComponent } from './app.component';
import { HoverDirective } from './CustomDirective/hover.directive';

@NgModule({
  declarations: [AppComponent, HighlightDirective, HoverDirective],
  imports: [BrowserModule],
  providers: [],
  bootstrap: [AppComponent],
})
export class AppModule {}
