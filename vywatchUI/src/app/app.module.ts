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
import { MainComponent } from './main/main.component';
import { SigninComponent } from './signin/signin.component';
import { AngularFireModule } from '@angular/fire';
import { AngularFireDatabaseModule } from '@angular/fire/database';
import { environment } from '../environments/environment';
import { AngularFirestoreModule, AngularFirestore } from '@angular/fire/firestore';
import { config } from 'process';
import { TestAjaxComponent } from './test-ajax/test-ajax.component';

@NgModule({
  declarations: [
    AppComponent,
    PageloginComponent,
    HeaderComponent,
    ActualityComponent,
    TendanceComponent,
    CountSubscribeComponent,
    SubjectUserChoiceComponent,
    MainComponent,
    SigninComponent,
    TestAjaxComponent,

  ],
  imports: [
    BrowserModule,
    AppRoutingModule,
    HttpClientModule,
    FormsModule,
    ReactiveFormsModule,
    AngularFireModule, 
    AngularFireModule.initializeApp(config),
    AngularFirestoreModule.enablePersistence()
  ],
  providers: [AngularFirestore],
  bootstrap: [AppComponent]
})
export class AppModule { }
