import { BrowserModule } from '@angular/platform-browser';
import { NgModule } from '@angular/core';

import { AppRoutingModule } from './app-routing.module';
import { AppComponent } from './app.component';
import { PageloginComponent } from './pagelogin/pagelogin.component';
import { HeaderComponent } from './header/header.component';
import { CreationCompteComponent } from './creation-compte/creation-compte.component';
import { ActualityComponent } from './actuality/actuality.component';
import { TendanceComponent } from './tendance/tendance.component';

@NgModule({
  declarations: [
    AppComponent,
    PageloginComponent,
    HeaderComponent,
    CreationCompteComponent,
    ActualityComponent,
    TendanceComponent
  ],
  imports: [
    BrowserModule,
    AppRoutingModule
  ],
  providers: [],
  bootstrap: [AppComponent]
})
export class AppModule { }
