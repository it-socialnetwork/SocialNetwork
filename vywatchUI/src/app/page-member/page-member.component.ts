import { Component, OnInit } from '@angular/core';
import { PostService } from '../../process/Service/PostService';
import { HttpClient } from '@angular/common/http';
import { PostUser } from 'src/process/Model/PostUser';
import { Comment } from 'src/process/Model/Comment';
import { NgForm } from '@angular/forms';
import { UserService } from 'src/process/Service/UserService';
import { Router } from '@angular/router';

@Component({
  selector: 'app-page-member',
  templateUrl: './page-member.component.html',
  styleUrls: ['./page-member.component.css']
})
export class PageMemberComponent implements OnInit {


  Comment
  UserService : UserService
  postService : PostService
  pseudo : String
  posts 
  constructor(
    readonly http:HttpClient,private _router: Router
  ) { }

  ngOnInit(): void {
    this.postService = new PostService(this.http)
   // this.UserService = new UserService(this.http, this._router)



   this.pseudo =   localStorage.getItem('pseudo');
    this.postService.displayPost(this.pseudo).subscribe(
      Response => {
          this.posts = Response
          console.log(Response)
      })


      var modalBg = document.querySelector('.modal-bg');
      modalBg.addEventListener('click', function(){
        modalBg.classList.remove('bg-active');
      });
      
      
      
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

}
}