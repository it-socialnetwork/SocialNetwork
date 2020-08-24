import { Component, OnInit } from '@angular/core';
import { Router, ActivatedRoute } from '@angular/router';
import {Subject} from '../../process/Model/Subject'
import { ListSubjectService } from 'src/process/Service/ListSubjectService';
@Component({
  selector: 'app-subject-user-choice',
  templateUrl: './subject-user-choice.component.html',
  styleUrls: ['./subject-user-choice.component.css']
})
export class SubjectUserChoiceComponent implements OnInit {


  Subject : Subject;
  subjects
  sub: any;

  Title : String;

  constructor(private route: ActivatedRoute, private router:Router, private listSubject:ListSubjectService) { }

  ngOnInit(): void {
    this.Title="CHOISIR VOS PRÉFÉRENCES";
    this.Subject=new Subject();
    this.sub = this.route.params.subscribe(params => {
      this.Subject.userPseudo = params['pseudo']; 
      
   });
   this.listSubject.displaySubject().subscribe(
    Response => {
    this.subjects = Response
    console.log(Response + "waouw")
    })
  }

}
