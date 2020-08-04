import { NgModule } from '@angular/core';
import { Routes, RouterModule } from '@angular/router';
import {PageloginComponent} from './pagelogin/pagelogin.component';
import {CountSubscribeComponent} from './count-subscribe/count-subscribe.component';
import {SubjectUserChoiceComponent} from './subject-user-choice/subject-user-choice.component'


const routes: Routes = [
  { path:'', component: PageloginComponent },
  { path:'signup', component: CountSubscribeComponent},
  { path:'signup/choicepreference', component: CountSubscribeComponent},
];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }
