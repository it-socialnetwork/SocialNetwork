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

    displaySubject() {
      return this.http.get("http://localhost:8080/vywatch/api/user/getalluser",httpOptions)
    }


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
        return this.http.post("http://localhost:8080/vywatch/api/authenticate", this.user, {responseType : 'text' as 'json'}).subscribe(res => {
          console.log("User service : on récupere la reponse de la requete : normalement un token")
          console.log(res);
          localStorage.setItem('token', String(res));
        },
        (error) => {
          console.log('Erreur ! : ' + error);
        }
        );
    }


}