import { BrowserModule } from '@angular/platform-browser';
import { NgModule } from '@angular/core';
import {HttpClientModule, HTTP_INTERCEPTORS} from '@angular/common/http';
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
import { TokenInterceptorService } from './token-interceptor.service';
import { MDBBootstrapModule} from 'angular-bootstrap-md'
import { CommonModule } from '@angular/common';
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
    CommonModule,
    AppRoutingModule,
    HttpClientModule,
    FormsModule,
    ReactiveFormsModule,
    AngularFireModule, 
    AngularFireModule.initializeApp(config),
    AngularFirestoreModule.enablePersistence(),
    MDBBootstrapModule.forRoot(),
  ],
  providers: [AngularFirestore, {
      provide : HTTP_INTERCEPTORS,
      useClass: TokenInterceptorService,
      multi : true}],
  
  bootstrap: [AppComponent]
})
export class AppModule { }
