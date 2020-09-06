import{User} from '../Model/User'
import { HttpClient, HttpRequest, HttpHeaders } from '@angular/common/http';
import { Observable } from 'rxjs';
import { UserSubject } from '../Model/UserSubject';
const httpOptions = {
    headers: new HttpHeaders({
      'Content-Type':  'application/json',
      
    })
};
export class UserSubjectService{
  pseudo:String = localStorage.getItem('pseudo')
    
    constructor(private readonly http : HttpClient){}

    addUserSubject (List : UserSubject) {
        console.log(List)
        return this.http.post("http://localhost:8080/vywatch/api/usersubject/addsubject", List, httpOptions).subscribe(() => {
          console.log('Enregistrement terminé !');
        },
        (error) => {
          console.log('Erreur ! : ' + error);
        }
        ) ;
    }


}