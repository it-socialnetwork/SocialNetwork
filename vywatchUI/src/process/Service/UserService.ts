import{User} from '../Model/User'
import { HttpClient, HttpRequest, HttpHeaders } from '@angular/common/http';
import { Observable } from 'rxjs';

const httpOptions = {
    headers: new HttpHeaders({
      'Content-Type':  'application/json',
      
    })
};
export class UserService{
  user:User
    constructor(private readonly http : HttpClient){}
    addUser (user : User) {
        console.log(user)
        return this.http.post("http://localhost:8080/vywatch/api/user/creatuser", user, httpOptions).subscribe(() => {
          console.log('Enregistrement terminé !');
        },
        (error) => {
          console.log('Erreur ! : ' + error);
        }
        ) ;
    }

    signInUser (username:String, password:String){
          this.user = new User()
        this.user.pseudo = username
        this.user.password = password
        // console.log(this.user)
        return this.http.post("http://localhost:8080/vywatch/api/authenticate", this.user, {responseType : 'text' as 'json'});
    }

}