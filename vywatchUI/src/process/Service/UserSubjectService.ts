import{User} from '../Model/User'
import { HttpClient, HttpRequest, HttpHeaders } from '@angular/common/http';
import { Observable } from 'rxjs';
import{ListUserSubject} from '../Model/ListUserSubject'
const httpOptions = {
    headers: new HttpHeaders({
      'Content-Type':  'application/json',
      
    })
};
export class UserSubjectService{

    
    constructor(private readonly http : HttpClient){}

    addUserSubject (List : ListUserSubject) {
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