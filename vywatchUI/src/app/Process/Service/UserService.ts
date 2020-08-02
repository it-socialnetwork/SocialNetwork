import{User} from '../Model/User'
import { HttpHeaders, HttpClient } from '@angular/common/http';

const httpOptions = {
    headers: new HttpHeaders({
      'Content-Type':  'application/json',
      
    })
};
export class UserService{
    http : HttpClient;
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