import { Component, OnInit } from '@angular/core';
import { NgForm } from '@angular/forms';
import { User } from '../../process/Model/User';
import { UserService } from '../../process/Service/UserService';
import { Location, LocationStrategy, PathLocationStrategy } from '@angular/common';
import { HttpClient } from '@angular/common/http';
@Component({
  selector: 'app-signin',
  templateUrl: './signin.component.html',
  styleUrls: ['./signin.component.css']
})
export class SigninComponent implements OnInit {
  public pseudo
  public password
  Us : UserService
  response: any
  constructor(
    readonly http:HttpClient
  ) { }

  ngOnInit(): void {
     this.Us = new UserService(this.http)
  }
  onSubmit(form : NgForm) {
   
    this.pseudo = form.value["login"]
    this.password = form.value["password"]
    
    let resp =  this.Us.signInUser(this.pseudo, this.password);
    resp.subscribe(data=>console.log("Token " +data))
  }
  



}

