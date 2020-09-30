import{User} from '../Model/User/user'
import { HttpClient, HttpRequest, HttpHeaders } from '@angular/common/http';
import { Observable } from 'rxjs';
import { HttpClientModule } from '@angular/common/http';
import { ListSubject } from '../Model/Subject';
import { cpuUsage } from 'process';
const httpOptions = {
    headers: new HttpHeaders({
      'Content-Type':  'application/json',
      
    })
};
export class ListSubjectService{
   token:String = localStorage.getItem('token');
   pseudo:String = localStorage.getItem('pseudo')
    constructor(private readonly http : HttpClient){}

    displaySubject() {
      return this.http.get("http://localhost:8080/vywatch/api/listSubject/allSubject",httpOptions)
    }
}