import { Component, OnInit } from '@angular/core';
import { PostService } from '../../process/Service/PostService';
import { HttpClient } from '@angular/common/http';
import { PostUser } from 'src/process/Model/PostUser';
import { Comment } from 'src/process/Model/Comment';
import { NgForm } from '@angular/forms';
import { UserService } from 'src/process/Service/UserService';
import { Router } from '@angular/router';
import {faHeart, faSearch} from '@fortawesome/free-solid-svg-icons'
import {faComments} from '@fortawesome/free-solid-svg-icons'
import * as $ from "jquery";
import * as Hammer from 'hammerjs';
@Component({
  selector: 'app-page-member',
  templateUrl: './page-member.component.html',
  styleUrls: ['./page-member.component.css']
})
export class PageMemberComponent implements OnInit {
  faHeart = faHeart
  retrieveResonse: any;
  retrieveResonse2: any;
  faComments = faComments
  comments
  base64Data: any;
  base64Data2: any;
  retrievedImage: any;
  retrievedImage2 : any;
  imageTodispplays: String[];
  post
  idcom
  ite
  iteUs
  iteimg
  Comment
  UserService : UserService
  postService : PostService
  pseudo : String
  posts 
  users
  usersimg: String[];
  pseudoSearch: String[];
  allUsers
  search :string;
  word : string;
  pseudo1
  constructor(
    private http: HttpClient
    ,private _router: Router
  ) { }

  ngOnInit(): void {
    
    this.iteimg = 0
    this.usersimg = []
    this.pseudoSearch = []
    this.users = {}
    this.allUsers = {}
    this.imageTodispplays=[]
    this.ite = 0
    this.iteUs = 0
    this.postService = new PostService(this.http)
   this.UserService = new UserService(this.http, this._router)
    this.post = {}
    this.comments = {}

   this.pseudo =   localStorage.getItem('pseudo');
    this.UserService.getAll().subscribe(
      Response => {
          this.allUsers =  Response
          while(this.allUsers[this.iteUs] != null){
            this.pseudoSearch.push(this.allUsers[this.iteUs].pseudo)
            this.iteUs ++
            console.log(this.pseudoSearch)
          }
      })
    this.postService.displayPost(this.pseudo).subscribe(
      Response => {
          this.posts = Response
          while(this.posts[this.ite] != null){
            this.base64Data = this.posts[this.ite].picturepost
            this.retrievedImage = 'data:image/jpeg;base64,' + this.base64Data;
            this.imageTodispplays.push(this.retrievedImage)
            this.postService.getUser(this.posts[this.ite].pseudo).subscribe((res) => {
              this.users = res
                this.base64Data2 = this.users.pictureprofil
                this.retrievedImage2 = 'data:image/jpeg;base64,' + this.base64Data2;
                console.log(this.usersimg)
                console.log("eeeeeeeeeeeeeeee")
                this.usersimg.push(this.retrievedImage2)
       
            },
            ) ;
           this.ite ++
          }
         
      })
      console.log("eeeeeeeeeeeeeeee")
      this.delay(3000)
      
      var modalBg = document.querySelector('.modal-bg');
      modalBg.addEventListener('click', function(){

        if (modalBg !== event.target) return;

        modalBg.classList.remove('bg-active');
      });


      var texte = document.querySelector('.modal-bg');
      
   
 

  }

  onSubmitArray(form: NgForm){}
  onkeypress(event: any){

    console.log(event.key)
  }
  onSubmit(form: NgForm) {
    
    this.Comment = {}
    this.Comment.idpost = form.value["idpost"]
    this.Comment.textcomment = form.value["commentaire"]
    console.log(this.Comment)
    let url = `http://localhost:8080/vywatch/api/comment/createComm/${this.pseudo}`;  
    this.http.post(url, this.Comment).toPromise()  
    .then(  
      res => console.log(res),
      msg => console.error(`Error: ${msg.status} ${msg.statusText}`) 
    );  
    
  }

  getId(id, text, iduser){
  
  console.log(id)
  console.log(text)
  console.log(iduser)
  var modalBg = document.querySelector('.modal-bg');
  modalBg.classList.add('bg-active');
  this.postService.getOnePost(id).subscribe(
    Response => {
        this.post = Response
        this.base64Data = this.post.picturepost
        console.log( this.post.picturepost)
        this.retrievedImage = 'data:image/jpeg;base64,' + this.base64Data;
        this.postService.displayComm(id).subscribe(
          Response => {
            this.comments =  Response
    
          })
    })

}
onSubmitArray1(form: NgForm){
  console.log('nickel')
  this.pseudo1 = form.value["pseudo"]
  console.log(this.pseudo1)
}
private delay(ms: number)
  {
    return new Promise(resolve => setTimeout(resolve, ms));
  }
}


