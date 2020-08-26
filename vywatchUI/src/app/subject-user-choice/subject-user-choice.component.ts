import { Component, OnInit } from '@angular/core';
import { Router, ActivatedRoute } from '@angular/router';
import {ListSubject} from '../../process/Model/Subject'
import { ListSubjectService } from 'src/process/Service/ListSubjectService';
import { HttpClient, HttpRequest, HttpHeaders } from '@angular/common/http';

import { FormBuilder } from '@angular/forms';


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

  Subject : ListSubject;
  subjects
  sub: any;
  Title : String;
  listSubject:ListSubjectService
  constructor(
    
    readonly http:HttpClient, private formBuilder: FormBuilder, private _router: Router) 
  { }

  ngOnInit() {
     this.listSubject = new ListSubjectService(this.http) 
    this.Title="CHOISIR VOS PRÉFÉRENCES";
    console.log("....")
    this.listSubject.displaySubject().subscribe(
      Response => {
      this.subjects = Response
      console.log(Response + "waouw")
      })
  }

}
