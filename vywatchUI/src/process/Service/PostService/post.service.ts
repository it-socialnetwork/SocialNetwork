import{Post} from '../../Model/Post/post'
import { HttpClient, HttpRequest, HttpHeaders } from '@angular/common/http';
import { Observable } from 'rxjs';


export class PostService{
    
    post:Post
    constructor(private readonly http : HttpClient){


    }

    displayPost(pseudo) {
        return this.http.get(`http://localhost:8080/vywatch/api/post/displayAllPost/${pseudo}` )
      }


    getOnePost(idpost) {
        return this.http.get(`http://localhost:8080/vywatch/api/post/getOne/${idpost}` )
      }

    displayComm(idpost) {
        return this.http.get(`http://localhost:8080/vywatch/api/comment/getAll/${idpost}` )
      }

    
}