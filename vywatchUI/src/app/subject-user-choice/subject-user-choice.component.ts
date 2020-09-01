import { Component, OnInit } from '@angular/core';
import { Router, ActivatedRoute } from '@angular/router';
import {ListSubject} from '../../process/Model/Subject'
import { HttpClient, HttpRequest, HttpHeaders } from '@angular/common/http';
import { FormBuilder } from '@angular/forms';
import { UserService } from '../../process/Service/UserService';
import { User } from 'src/process/Model/User';
import { ListSubjectService } from 'src/process/Service/ListSubjectService';
import { ListUserSubject } from '../../process/Model/ListUserSubject';
import {UserSubjectService} from '../../process/Service/UserSubjectService';

import{faPlus} from '@fortawesome/free-solid-svg-icons'
import{faHandshake} from '@fortawesome/free-solid-svg-icons'
import{faPrayingHands} from '@fortawesome/free-solid-svg-icons'
import{faAtom} from '@fortawesome/free-solid-svg-icons'
import{faMonument} from '@fortawesome/free-solid-svg-icons'
import{faMinus} from '@fortawesome/free-solid-svg-icons'

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
  ListChoiceSubjects: String[];
  

  ListUserSubject:ListUserSubject;
  UserSubjectService : UserSubjectService;
  //public ListChoiceSubjects: string[][] = []
  constructor(
    
    readonly http:HttpClient, private formBuilder: FormBuilder, private _router: Router) { }


  faPlus=faPlus;
  faAtom=faAtom;
  faPrayingHands=faPrayingHands;
  faHandshake=faHandshake;
  faMonument=faMonument;
  faMinus=faMinus;

  ngOnInit() {
    // Show loading animation.
    this.ListChoiceSubjects=[]
     this.userService = new UserService(this.http) 
     this.listSubjectService = new ListSubjectService(this.http)
    this.UserSubjectService = new UserSubjectService(this.http)
    this.Title="CHOISIR VOS PRÉFÉRENCES";
    console.log("....")
    this.listSubjectService.displaySubject().subscribe(
      Response => {
        console.log(Response)
        this.Subjects = Response
      })
  }

  AddSubjects(nameSubject: string)
  {
    if(this.ListChoiceSubjects.indexOf(nameSubject)==-1)
    {
      console.log(this.ListChoiceSubjects)
    this.ListChoiceSubjects.push(nameSubject)
    }
  }

  RemoveSubject(nameSubject : String)
  {
    const index: number = this.ListChoiceSubjects.indexOf(nameSubject);
    if (index !== -1) {
      this.ListChoiceSubjects.splice(index, 1);
    }
  }

  private delay(ms: number)
  {
    return new Promise(resolve => setTimeout(resolve, ms));
  }

  async Send()
  {
    
    
    for(var namesub in this.ListChoiceSubjects)
    {
      await this.delay(2000);
      this.ListUserSubject = new ListUserSubject()
      this.ListUserSubject.pseudouser=localStorage.getItem("pseudo");
      this.ListUserSubject.namesubject=this.ListChoiceSubjects[namesub];
      console.log(this.ListUserSubject)
      this.UserSubjectService.addUserSubject(this.ListUserSubject)
    }

  }

}
