import { BrowserModule } from '@angular/platform-browser';
import { NgModule } from '@angular/core';
import {HttpClientModule, HTTP_INTERCEPTORS} from '@angular/common/http';
import {FormsModule, ReactiveFormsModule } from '@angular/forms';
import { AppRoutingModule } from './app-routing.module';
import { AppComponent } from './app.component';

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

import { InterceptorService } from '../process/Service/InterceptorService/interceptor.service';
import { MDBBootstrapModule} from 'angular-bootstrap-md'
import { CommonModule } from '@angular/common';
import { FontAwesomeModule } from '@fortawesome/angular-fontawesome';
import { PageMemberComponent } from './page-member/page-member.component';
import { ChatComponent } from './chat/chat.component';
import { ChatService } from '../process/Service/ChatService/chat.service';
import { SidenavComponent } from './sidenav/sidenav.component';
import { Ng2SearchPipeModule } from 'ng2-search-filter';
import { SearchbarComponent } from './searchbar/searchbar.component';

@NgModule({
  declarations: [
    AppComponent,
    HeaderComponent,
    ActualityComponent,
    TendanceComponent,
    CountSubscribeComponent,
    SubjectUserChoiceComponent,
    MainComponent,
    SigninComponent,
    PageMemberComponent,
    ChatComponent,
    SidenavComponent,
    SearchbarComponent,

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
    FontAwesomeModule,
    Ng2SearchPipeModule
  ],
  providers: [ChatService, AngularFirestore, {
      provide : HTTP_INTERCEPTORS,
      useClass: InterceptorService,
      multi : true}],
  
  bootstrap: [AppComponent]
})
export class AppModule { }
