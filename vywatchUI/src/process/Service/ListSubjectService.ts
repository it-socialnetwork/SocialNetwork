import{User} from '../Model/User'
import { HttpClient, HttpRequest, HttpHeaders } from '@angular/common/http';
import { Observable } from 'rxjs';
import { HttpClientModule } from '@angular/common/http';
const httpOptions = {
    headers: new HttpHeaders({
      'Content-Type':  'application/json',
      
    })
};
export class ListSubjectService{
   token:String = localStorage.getItem('token');
   pseudo:String = localStorage.getItem('pseudo')
    constructor(private http : HttpClient){}

    displaySubject(){
      let tokenStr = 'Bearer ' + this.token
      const headers = new HttpHeaders().set("Authorization",tokenStr);
      console.log("List subject service on affiche le token qu'on renvoit pour l'autorisation")
      console.log(tokenStr)
      return this.http.get("http://localhost:8080/vywatch/api/listSubject/allSubject",{headers, responseType : 'text' as 'json'})
    }
}