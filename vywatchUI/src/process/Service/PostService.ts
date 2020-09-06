import{PostUser} from '../Model/PostUser'
import { HttpClient, HttpRequest, HttpHeaders } from '@angular/common/http';
import { Observable } from 'rxjs';

const httpOptions = {
    headers: new HttpHeaders({
      'Content-Type':  'application/json',
      
    })
};
export class PostService{
    
    post:PostUser
    constructor(private readonly http : HttpClient){


    }

    displayPost(pseudo) {
        return this.http.get(`http://localhost:8080/vywatch/api/post/displayAllPost/${pseudo}` ,httpOptions)
      }

}