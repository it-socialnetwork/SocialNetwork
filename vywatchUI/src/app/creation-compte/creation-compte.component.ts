import { Component, OnInit } from '@angular/core';
import { User } from '../Process/Model/User';
import { UserService } from '../Process/Service/UserService';
import { HttpClient, HttpRequest, HttpHeaders } from '@angular/common/http';
import { Observable } from 'rxjs';
import { map, catchError } from "rxjs/operators";
import { FormGroup, FormControl, Validators, FormBuilder } from '@angular/forms';

const httpOptions = {
  headers: new HttpHeaders({
    'Content-Type':  'application/json',
    
  })
};

@Component({
  selector: 'app-creation-compte',
  templateUrl: './creation-compte.component.html',
  styleUrls: ['./creation-compte.component.css']
})
export class CreationCompteComponent implements OnInit {
  //Le titre est amené à changer en fonction des différentes partie
  Title : String;

  //Cette Varaible permet de réaliser un formulaire
  SubscribeForm: FormGroup;
  SubscribeForm1: FormGroup;

  //Variable pour afficher ou masquer un éléments pour l'inscription
  SubscribePart: boolean;
  SubscribePart1: boolean;
  SubscribePart2: boolean;
  
  //Variable pour la date de naissance
  Yearnow;
  DayArray;
  YearArray;
  
  //Variable spécifiant si le sexe est différent de Homme ou Femme
  //Cette variable s'initialise à true lors d'un click sur l'option "Autre"
  AnGender:boolean;

  constructor(private formBuilder: FormBuilder) { }
  
  ngOnInit(): void {
    this.Title="CRÉER UN COMPTE";
    this.SubscribePart=true;
    this.initFormSubscribe();

    //on crée une instance de la classe date puis on récupère l'année actuelle
    //qui permettra d'afficher les année dans le tag spécifié
    var datenow = new Date();
    this.Yearnow=datenow.getFullYear();

    //on crée des tableau pour les tags de la date de naissance
    this.DayArray = new Array(31); 
    this.YearArray=new Array(101);
  }
  
  initFormSubscribe() {
    this.SubscribeForm = this.formBuilder.group({
      firstName: ['', Validators.required],
      lastName: ['', Validators.required],
      dayBirth: [null, Validators.required],
      monthBirth: [null, Validators.required],
      yearBirth: [null, Validators.required],
      email: ['', [Validators.required, Validators.pattern("^[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,4}$")]],
      password: ['', [Validators.required, Validators.minLength(6)]]
    }
    );

    this.SubscribeForm1 = this.formBuilder.group({
      sexe: ['', Validators.required]
    }
    );

  }

  ClassicGender() : void{
    this.AnGender=false;
  }

  AnotherGender() : void
  {
    this.AnGender=true;
  }

  NextPartSubscribe(NextPart):void
  {
    if(NextPart==1)
    {
      if(this.SubscribeForm.valid)
      {
        this.Title="Encore quelques détails sur vous";
        this.SubscribePart=false;
        this.SubscribePart1=true;
      }
    }
    if(NextPart==2)
    {
      this.SubscribePart1=false;
      this.SubscribePart2=true;
    }
  }

  LastPartSubscribe(LastPart):void
  {
    if(LastPart==1)
    {
      this.Title="CRÉER UN COMPTE";
      this.SubscribePart=true;
      this.SubscribePart1=false;
    }
    if(LastPart==2)
    {
      this.SubscribePart1=true;
      this.SubscribePart2=false;
    }
  }

}
