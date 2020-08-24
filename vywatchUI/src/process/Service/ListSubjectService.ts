import{User} from '../Model/User'
import { HttpClient, HttpRequest, HttpHeaders } from '@angular/common/http';
import { Observable } from 'rxjs';

const httpOptions = {
    headers: new HttpHeaders({
      'Content-Type':  'application/json',
      
    })
};
export class ListSubjectService{
   token:String = localStorage.getItem('token');
   pseudo:String = localStorage.getItem('pseudo')
    constructor(private readonly http : HttpClient){}

    displaySubject(){
      let tokenStr = ""+this.token;
      const headers = new HttpHeaders().set("Authorization", tokenStr);
      console.log(this.token)
      return this.http.get(`http://localhost:8080/vywatch/api/listSubject/allSubject/${this.pseudo}`,{headers, responseType : 'text' as 'json'});
    }
}