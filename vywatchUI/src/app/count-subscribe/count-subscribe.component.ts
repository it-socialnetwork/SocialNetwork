import { Component, OnInit } from '@angular/core';
import { User } from '../../process/Model/User';
import { UserService } from '../../process/Service/UserService';
import { HttpClient, HttpRequest, HttpHeaders } from '@angular/common/http';
import { Observable } from 'rxjs';
import { map, catchError } from "rxjs/operators";
import { FormGroup, FormControl, Validators, FormBuilder } from '@angular/forms';
import { ActivatedRoute, Route, Router } from '@angular/router';

const httpOptions = {
  headers: new HttpHeaders({
    'Content-Type':  'application/json',
    
  })
};

@Component({
  selector: 'app-creation-compte',
  templateUrl: './count-subscribe.component.html',
  styleUrls: ['./count-subscribe.component.css']
})
export class CountSubscribeComponent implements OnInit {
  //Le titre est amené à changer en fonction des différentes partie
  Title : String;

  User :User; //on crée l'objet de l'instance de la classe User
  UserService :UserService; //on crée l'objet de l'instance de la classe UserService

  //Cette Varaible permet de réaliser un formulaire
  SubscribeForm: FormGroup;
  

  //Variable pour afficher ou masquer un éléments pour l'inscription
  SubscribePart: boolean;
  SubscribePart1: boolean;
  SubscribePart2: boolean;
  SubscribePart3: boolean;
  
  

  //Variable pour la date de naissance
  Yearnow;
  Daynow;
  Monthnow;
  DayArray;
  YearArray;
  
  yearnumber: number;
  
  //Variable spécifiant si le sexe est différent de Homme ou Femme
  //Cette variable s'initialise à true lors d'un click sur l'option "Autre"
  AnGender:boolean;
  

  constructor(readonly http:HttpClient, private formBuilder: FormBuilder, private _router: Router) { }
  
  ngOnInit(): void {
    this.Title="CRÉER UN COMPTE";
    this.SubscribePart=true;
    this.initFormSubscribe();

    this.User=new User(); //on crée l'instance de la classe User
    this.UserService=new UserService(this.http); //on crée l'instance de la classe User

    //on crée une instance de la classe date puis on récupère l'année actuelle
    //qui permettra d'afficher les année dans le tag spécifié
    var datenow = new Date();
    this.Yearnow=datenow.getFullYear();
    this.Monthnow=datenow.getMonth();
    this.Daynow=datenow.getDate();

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
      password: ['', [Validators.required, Validators.minLength(6)]],
    }
    );
    
  }

  ClassicGender() : void{
    this.AnGender=false;
  }

  AnotherGender() : void
  {
    this.AnGender=true;
    this.User.sexe="";
  }

  //Cette fonction va permettre de switcher entre les différentes partie de l'inscription 
  //chaque étape valide les champs renseignés
  NextPartSubscribe(NextPart):void
  {
    if(NextPart==1)
    {
      if(this.SubscribeForm.valid)
      {
        const formValue = this.SubscribeForm.value;
        this.User.firstname=formValue['firstName'];
        this.User.lastname=formValue['lastName'];
        this.User.email=formValue['email'];
        this.User.password=formValue['password'];
        
        if(this.ValideBirthday()==true)
        {
          if(formValue['dayBirth']>=0 && formValue['dayBirth']<=9)
          {
            formValue['dayBirth']="0"+formValue['dayBirth'];
          }
          if(formValue['monthBirth']>=0 && formValue['monthBirth']<=9)
          {
            formValue['monthBirth']="0"+formValue['monthBirth'];
          }
          this.User.dateBirth=formValue['yearBirth']+"-"+formValue['monthBirth']+"-"+formValue['dayBirth'];
          this.Title="Encore quelques détails sur vous";
          this.SubscribePart=false;
          this.SubscribePart1=true;
        }
      }
    }
    if(NextPart==2)
    {
      this.SubscribePart1=false;
      this.SubscribePart2=true;
    }

    if(NextPart==3)
    {
      if(this.User.pseudo!="")
      {
        this.SubscribePart2=false;
        this.SubscribePart3=true;
      }
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

  //Crée l'utilisateur et envoie l'utilisateur vers la page des choix de sujet
  CreatUser()
  {
    this.UserService.addUser(this.User);
    let token = this.UserService.signInUser(this.User.pseudo, this.User.password)
     console.log(token)
    //localStorage.setItem('token', token);
     // var str: string = String(this.User.pseudo);
      //localStorage.setItem('pseudo', str);
     
      this._router.navigate(['signup/preference/', this.User.pseudo], {queryParams: {}});
      

   
    
  }

  //Cette fonction valide la date de naissance
  ValideBirthday(): Boolean
  {
    const formValue = this.SubscribeForm.value;
    formValue['yearBirth'];
    formValue['dayBirth'];
    formValue['monthBirth'];

    
    if(this.Yearnow-formValue['yearBirth']>=17)
    {
      if(formValue['monthBirth']==2 && (formValue['dayBirth']==30 || formValue['dayBirth']==31))
      {
        return false;
      }
      else
      {
        if(formValue['monthBirth']==2 && formValue['dayBirth']==29)
        {
            if(formValue['yearBirth']%4==0)
            {
                if(formValue['yearBirth']%100==0)
                {
                  return true;
                }
                else
                {
                  if(formValue['yearBirth']%400==0)
                  {
                    return false;
                  }
                  else
                  {
                    return true;
                  }
                }
            }
            else
            {
                return false;
            }
        }
        else
        {
            return true;
        }
        
      }
      
    }
    else
    {
      return false;
    }
    
  }
  

}
