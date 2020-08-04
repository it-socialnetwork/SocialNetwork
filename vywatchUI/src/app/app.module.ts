import { BrowserModule } from '@angular/platform-browser';
import { NgModule } from '@angular/core';
import {HttpClientModule} from '@angular/common/http';
import {FormsModule, ReactiveFormsModule } from '@angular/forms';
import { AppRoutingModule } from './app-routing.module';
import { AppComponent } from './app.component';
import { PageloginComponent } from './pagelogin/pagelogin.component';
import { HeaderComponent } from './header/header.component';
import { CountSubscribeComponent } from './count-subscribe/count-subscribe.component';
import { ActualityComponent } from './actuality/actuality.component';
import { TendanceComponent } from './tendance/tendance.component';
import { SubjectUserChoiceComponent } from './subject-user-choice/subject-user-choice.component';

@NgModule({
  declarations: [
    AppComponent,
    PageloginComponent,
    HeaderComponent,
    ActualityComponent,
    TendanceComponent,
    CountSubscribeComponent,
    SubjectUserChoiceComponent
  ],
  imports: [
    BrowserModule,
    AppRoutingModule,
    HttpClientModule,
    FormsModule,
    ReactiveFormsModule 
  ],
  providers: [],
  bootstrap: [AppComponent]
})
export class AppModule { }
