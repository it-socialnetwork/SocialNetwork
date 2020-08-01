import { Component, OnInit } from '@angular/core';
import { User } from '../Model/User';
import { HttpClient, HttpRequest, HttpHeaders } from '@angular/common/http';
import { Observable } from 'rxjs';
import { map, catchError } from "rxjs/operators";
import { FormGroup, FormControl, Validators } from '@angular/forms';
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
  User:User;

  
  DayBirth:String;
  MonthBirth:String;
  YearBirth:String;

  Yearnow;
  DayArray;
  YearArray;

  Title : String;

  //Variable pour afficher ou masquer un éléments pour l'inscription
  SubscribePart : boolean;
  SubscribePart1 : boolean;
  SubscribePart2 : boolean;
  SubscribePart3 : boolean;

  //Variable spécifiant si le sexe est différent de Homme ou Femme
  //Cette variable s'initialise à true lors d'un click sur l'option "Autre"
  AnGender:boolean;

  constructor(private readonly http:HttpClient) { }
  
  ngOnInit(): void {
    //on crée une instance de la classe date puis on récupère l'année actuelle
    //qui permettra d'afficher les année dans le tag spécifié
    var datenow = new Date();
    this.Yearnow=datenow.getFullYear();

    //on crée des tableau pour les tags de la date de naissance
    this.DayArray = new Array(31); 
    this.YearArray=new Array(101);

    //On crée l'instance de la classe User qui permettra de créer un utilisateur
    this.User = new User();

    this.Title="CRÉER UN COMPTE";

    this.SubscribePart=true;
    
  }
  
  ClassicGender() : void{
    this.AnGender=false;
  }

  AnotherGender() : void
  {
    this.AnGender=true;
    this.User.sexe="";
  }

  NextPartSubscribe(NextPart):void
  {
    if(NextPart==1)
    {
      this.Title="Encore quelques détails sur vous";
      this.SubscribePart=false;
      this.SubscribePart1=true;
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


  //--------------------------------------------------------
  //Requete HTTP
  //--------------------------------------------------------
  addUser () {
    if(this.DayBirth>="0" && this.DayBirth<="9")
    {
      this.DayBirth="0"+this.DayBirth;
    }
    this.User.dateBirth=this.YearBirth+"-"+this.MonthBirth+"-"+this.DayBirth;
    console.log(this.User)
    return this.http.post("http://localhost:8080/users/createUsers", this.User, httpOptions).subscribe(() => {
      console.log('Enregistrement terminé !');
    },
    (error) => {
      console.log('Erreur ! : ' + error);
    }
    ) ;
  }

}
