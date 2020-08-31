import { Component, OnInit } from '@angular/core';
import { Router, ActivatedRoute } from '@angular/router';
import {ListSubject} from '../../process/Model/Subject'

import { HttpClient, HttpRequest, HttpHeaders } from '@angular/common/http';

import { FormBuilder } from '@angular/forms';
import { UserService } from '../../process/Service/UserService';
import { User } from 'src/process/Model/User';
import { ListSubjectService } from 'src/process/Service/ListSubjectService';


const httpOptions = {
  headers: new HttpHeaders({
    'Content-Type':  'application/json',
    
  })
};

@Component({
  selector: 'app-subject-user-choice',
  templateUrl: './subject-user-choice.component.html',
  styleUrls: ['./subject-user-choice.component.css']
})
export class SubjectUserChoiceComponent implements OnInit {

  Subjects ;
  subjects
  sub: any;
  Title : String;
  userService:UserService
  listSubjectService:ListSubjectService
  constructor(
    
    readonly http:HttpClient, private formBuilder: FormBuilder, private _router: Router) 
  { }

  ngOnInit() {
    // Show loading animation.
  
     this.userService = new UserService(this.http) 
     this.listSubjectService = new ListSubjectService(this.http)
    this.Title="CHOISIR VOS PRÉFÉRENCES";
    console.log("....")
    this.listSubjectService.displaySubject().subscribe(
      Response => {
        console.log(Response)
        this.Subjects = Response
      
      })

      
  }

}
