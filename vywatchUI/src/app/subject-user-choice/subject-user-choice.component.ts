import { Component, OnInit } from '@angular/core';
import { Router, ActivatedRoute } from '@angular/router';
import {Subject} from '../../process/Model/Subject'
@Component({
  selector: 'app-subject-user-choice',
  templateUrl: './subject-user-choice.component.html',
  styleUrls: ['./subject-user-choice.component.css']
})
export class SubjectUserChoiceComponent implements OnInit {


  Subject : Subject;

  sub: any;

  Title : String;

  constructor(private route: ActivatedRoute) { }

  ngOnInit(): void {
    this.Title="CHOISIR VOS PRÉFÉRENCES";
    this.Subject=new Subject();
    this.sub = this.route.params.subscribe(params => {
      this.Subject.userPseudo = params['pseudo']; 
   });
  }

}
