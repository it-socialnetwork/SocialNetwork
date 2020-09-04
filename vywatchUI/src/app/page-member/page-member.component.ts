import { Component, OnInit } from '@angular/core';
import { PostService } from '../../process/Service/PostService';
import { HttpClient } from '@angular/common/http';
import { Post } from 'src/process/Model/Post';
@Component({
  selector: 'app-page-member',
  templateUrl: './page-member.component.html',
  styleUrls: ['./page-member.component.css']
})
export class PageMemberComponent implements OnInit {

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
      })
  }

}
