import { Component, OnInit } from '@angular/core';
import { PostService } from '../../process/Service/PostService';
import { HttpClient } from '@angular/common/http';
import { Post } from 'src/process/Model/Post';
import { Comment } from 'src/process/Model/Comment';
import { NgForm } from '@angular/forms';

@Component({
  selector: 'app-page-member',
  templateUrl: './page-member.component.html',
  styleUrls: ['./page-member.component.css']
})
export class PageMemberComponent implements OnInit {

  Comment
  postService : PostService
  pseudo : String
  posts 
  constructor(
    readonly http:HttpClient
  ) { }

  ngOnInit(): void {
    this.postService = new PostService(this.http)
   this.pseudo =   localStorage.getItem('pseudo');
    this.postService.displayPost(this.pseudo).subscribe(
      Response => {
          this.posts = Response
          console.log(Response)
      })
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

  getId(i){
    console.log(i)
  }
}
