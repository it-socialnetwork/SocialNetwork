import{User} from '../Model/User'
import { HttpClient, HttpRequest, HttpHeaders } from '@angular/common/http';
import { Observable } from 'rxjs';

const httpOptions = {
    headers: new HttpHeaders({
      'Content-Type':  'application/json',
      
    })
};
export class UserService{
    
    constructor(private readonly http : HttpClient){}
    addUser (user : User) {
        console.log(user)
        return this.http.post("http://localhost:8080/users/createUsers", user, httpOptions).subscribe(() => {
          console.log('Enregistrement terminé !');
        },
        (error) => {
          console.log('Erreur ! : ' + error);
        }
        ) ;
    }
}