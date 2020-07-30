import { NgModule } from '@angular/core';
import { Routes, RouterModule } from '@angular/router';
import {PageloginComponent} from './pagelogin/pagelogin.component';
import {CreationCompteComponent} from './creation-compte/creation-compte.component'

const routes: Routes = [
  { path:'', component: PageloginComponent },
  { path:'signup', component: CreationCompteComponent}
];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }
