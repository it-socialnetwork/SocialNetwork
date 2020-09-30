import{User} from '../Model/User/user'
import { HttpClient, HttpRequest, HttpHeaders } from '@angular/common/http';
import { Observable } from 'rxjs';
import { HttpClientModule } from '@angular/common/http';
import { ListSubject } from '../Model/Subject';
import { cpuUsage } from 'process';
import { Conversation } from '../Model/Conversation';
const httpOptions = {
    headers: new HttpHeaders({
      'Content-Type':  'application/json',
      
    })
};
export class MessageChatService{
   pseudo:String = localStorage.getItem('pseudo');
   
    constructor(private readonly http : HttpClient){}

    GetIdConv() : Observable<Conversation> {
      return this.http.get<Conversation>("http://localhost:8080/vywatch/api/conversation/getidconv",httpOptions);
    }

    CreatConversation(conv : Conversation) {
      console.log(conv)
      return this.http.post("http://localhost:8080/vywatch/api/conversation/addconv",conv, httpOptions).subscribe(() => {
        console.log('Enregistrement terminé !');
      },
      (error) => {
        console.log('Erreur ! : ' + error);
      }
      );
    }
}