import { HttpClient, HttpRequest, HttpHeaders } from '@angular/common/http';


const httpOptions = {
    headers: new HttpHeaders({
      'Content-Type':  'application/json',
      'Authorization': ''
      
    })
};

export class JWTservice{
    constructor(private readonly http : HttpClient, )
    {}

    
  
}

