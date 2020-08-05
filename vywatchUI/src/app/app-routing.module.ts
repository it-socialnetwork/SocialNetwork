import { NgModule } from '@angular/core';
import { Routes, RouterModule } from '@angular/router';
import {PageloginComponent} from './pagelogin/pagelogin.component';
import {CountSubscribeComponent} from './count-subscribe/count-subscribe.component';
import {SubjectUserChoiceComponent} from './subject-user-choice/subject-user-choice.component'
import {MainComponent} from './main/main.component'

const routes: Routes = [
  { path:'', component: MainComponent },
  { path:'signup', component: CountSubscribeComponent},
  { path:'signup/preference/:pseudo', component: SubjectUserChoiceComponent},
];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }
