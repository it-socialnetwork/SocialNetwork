import{User} from '../../Model/User/user'
import { HttpClient, HttpRequest, HttpHeaders } from '@angular/common/http';
import { Observable } from 'rxjs';
import { Router } from '@angular/router';


export class UserService{

    user:User
    constructor(private readonly http : HttpClient, private _router: Router){}

    getAll() {
      return this.http.get("http://localhost:8080/vywatch/api/user/getalluser")
    }


    addUser (user : User) {
        console.log(user)
        return this.http.post("http://localhost:8080/vywatch/api/user/creatuser", user).subscribe(() => {
          console.log('Enregistrement terminé !');
        },
        (error) => {
          console.log('Erreur ! : ' + error);
        }
        ) ;
    }

     signInUser (username:String, password:String, inscription:boolean){
        this.user = new User()
        this.user.pseudo = username
        this.user.password = password
        return this.http.post("http://localhost:8080/vywatch/api/authenticate", this.user, {responseType : 'text' as 'json'}).subscribe(async res => {
          localStorage.setItem('pseudo', String(username));
          localStorage.setItem('token', String(res));
          if(inscription==false)
          {
            this._router.navigate(['pageMembre/',  localStorage.getItem('pseudo')], {queryParams: {}});
          }
          else
          {
            await this.delay(2000)
            this._router.navigate(['preference/', localStorage.getItem('pseudo')], {queryParams: {}});
          }
        },
        (error) => {
          console.log('Erreur ! : ' + error);
        }
        );
    }
   
      private delay(ms: number)
    {
      return new Promise(resolve => setTimeout(resolve, ms));
    }


}