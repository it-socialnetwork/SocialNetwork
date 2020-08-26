import { Component, OnInit } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { User } from 'src/process/Model/User';

@Component({
  selector: 'app-test-ajax',
  templateUrl: './test-ajax.component.html',
  styleUrls: ['./test-ajax.component.css']
})
export class TestAjaxComponent implements OnInit {
Users
  constructor(private http: HttpClient) { }

  ngOnInit(): void {
    
    console.log(this.Users)
  }
  init() {  
    console.log("GET");  
    let url = `http://localhost:8080/vywatch/api/user/getalluser`;  
    this.http.get(url).toPromise()  
    .then(  
      res => this.Users = res,
      msg => console.error(`Error: ${msg.status} ${msg.statusText}`) 
    );  
    console.log(this.Users)
    console.log("eeeeeeeeeeeeeeeeeeeeeee")  
}  
}
