import { Component, OnInit } from '@angular/core';
import { User } from '../Model/User'
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

  Title : String;

  

  //Variable pour afficher ou masquer un éléments pour l'inscription
  SubscribePart : boolean;
  SubscribePart1 : boolean;
  SubscribePart2 : boolean;
  
  Yearnow;
  DayArray; 
  YearArray;

  Gender:String;

  constructor() { }
  
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

  NextPartSubscribe(NextPart):void
  {
    if(NextPart==1)
    {
      this.Title="Encore quelques détails sur vous";
      this.SubscribePart=false;
      this.SubscribePart1=true;
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
  }


}
