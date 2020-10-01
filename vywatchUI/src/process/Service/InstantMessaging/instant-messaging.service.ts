import { Injectable } from '@angular/core';

import { HttpClient, HttpRequest, HttpHeaders } from '@angular/common/http';
import { Observable } from 'rxjs';
import { HttpClientModule } from '@angular/common/http';
import { cpuUsage } from 'process';
import { Conversation } from '../../Model/Conversation/conversation';
@Injectable({
  providedIn: 'root'
})
export class InstantMessagingService {
  pseudo:String = localStorage.getItem('pseudo');
   
  constructor(private readonly http : HttpClient){}

  GetIdConv() : Observable<Conversation> {
    return this.http.get<Conversation>("http://localhost:8080/vywatch/api/conversation/getidconv");
  }

  CreatConversation(conv : Conversation) {
    console.log(conv)
    return this.http.post("http://localhost:8080/vywatch/api/conversation/addconv",conv).subscribe(() => {
      console.log('Enregistrement terminé !');
    },
    (error) => {
      console.log('Erreur ! : ' + error);
    }
    );
  }
}
