import { Component, OnInit } from '@angular/core';
import { Router, ActivatedRoute } from '@angular/router';
import {Subject} from '../../process/Model/Subject/subject'
import { HttpClient, HttpRequest, HttpHeaders } from '@angular/common/http';
import { FormBuilder } from '@angular/forms';
import { UserService } from '../../process/Service/UserService/user.service';
import { User } from 'src/process/Model/User/user';
import { SubjectService } from 'src/process/Service/SubjectService/subject.service';
import {UserSubjectService} from '../../process/Service/UserSubject/usersubject.service';
import{faPlus} from '@fortawesome/free-solid-svg-icons'
import{faHandshake} from '@fortawesome/free-solid-svg-icons'
import{faPrayingHands} from '@fortawesome/free-solid-svg-icons'
import{faAtom} from '@fortawesome/free-solid-svg-icons'
import{faMonument} from '@fortawesome/free-solid-svg-icons'
import{faMinus} from '@fortawesome/free-solid-svg-icons'
import { UserSubject } from 'src/process/Model/UserSubject/user-subject';

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

  Subjects 
  subjects
  sub: any;
  userService:UserService
  listSubjectService:SubjectService
  ListChoiceSubjects: String[];
  UserSubject:UserSubject;
  UserSubjectService : UserSubjectService;
  
  constructor(readonly http:HttpClient, private formBuilder: FormBuilder, private _router: Router) { }


  faPlus=faPlus;
  faAtom=faAtom;
  faPrayingHands=faPrayingHands;
  faHandshake=faHandshake;
  faMonument=faMonument;
  faMinus=faMinus;

  ngOnInit() {
    // Show loading animation.
    this.ListChoiceSubjects=[]
     this.userService = new UserService(this.http, this._router) 
     this.listSubjectService = new SubjectService(this.http)
    this.UserSubjectService = new UserSubjectService(this.http)
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
      this.UserSubject = new UserSubject()
      this.UserSubject.pseudo=localStorage.getItem("pseudo");
      this.UserSubject.namesub=this.ListChoiceSubjects[namesub];
      this.UserSubjectService.addUserSubject(this.UserSubject)
    }
    this._router.navigate(['membre/',  localStorage.getItem('pseudo')], {queryParams: {}});
  }

}
