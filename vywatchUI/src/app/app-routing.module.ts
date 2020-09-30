import { NgModule } from '@angular/core';
import { Routes, RouterModule } from '@angular/router';

import {CountSubscribeComponent} from './count-subscribe/count-subscribe.component';
import {SubjectUserChoiceComponent} from './subject-user-choice/subject-user-choice.component'
import {MainComponent} from './main/main.component'
import {SigninComponent} from './signin/signin.component'

import { PageMemberComponent } from './page-member/page-member.component';
import{ChatComponent} from './chat/chat.component'
const routes: Routes = [
  { path:'', component: MainComponent },
  { path:'signup', component: CountSubscribeComponent},
  { path:'preference/:pseudo', component: SubjectUserChoiceComponent},
  {path:'signin', component: SigninComponent},
  {path:'pageMembre/:pseudo', component: PageMemberComponent},
  {path:'chat', component: ChatComponent},
];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }
