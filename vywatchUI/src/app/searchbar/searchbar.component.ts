import { Component, OnInit } from '@angular/core';
import { User } from 'src/process/Model/User/user';
import { UserService } from 'src/process/Service/UserService/user.service';

@Component({
  selector: 'app-searchbar',
  templateUrl: './searchbar.component.html',
  styleUrls: ['./searchbar.component.css']
})
export class SearchbarComponent implements OnInit {

  Users :any
  UserService : UserService

  ite //iteration entre user
  constructor() { }

  ngOnInit(): void {

    this.UserService.getAllUser().subscribe(
      Response => {
          this.Users =  Response
      })
  }

}
