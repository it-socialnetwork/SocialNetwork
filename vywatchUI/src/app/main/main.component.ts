import { Component, OnInit } from '@angular/core';


import{faHandshake} from '@fortawesome/free-solid-svg-icons'
import{faPrayingHands} from '@fortawesome/free-solid-svg-icons'
import{faAtom} from '@fortawesome/free-solid-svg-icons'
import{faMonument} from '@fortawesome/free-solid-svg-icons'

@Component({
  selector: 'app-main',
  templateUrl: './main.component.html',
  styleUrls: ['./main.component.css']
})
export class MainComponent implements OnInit {

  faHandshake=faHandshake
  faPrayingHands=faPrayingHands
  faAtom=faAtom
  faMonument=faMonument

  
  
  selectedFile: File
  constructor() { }
  


  ngOnInit(): void {

    const header = document.getElementById('header')
    const title = document.getElementById('titlename')
    var elts = document.getElementsByTagName('a');
    // J'en fait une fonction pour pouvoir l'appeler au chargement de la page car
    // le scoll n'est pas forcément en haut au chargement.
    function onWindowScroll(event) {
      if (window.pageYOffset < 46) {
        header.classList.remove('scrolled')
        title.classList.remove('scrolled')

        elts[0].style.color = 'white';
        elts[1].style.color = 'white';
        elts[2].style.color = 'white';
        elts[3].style.color = 'white';
        elts[4].style.color = 'white';
        
      } else {
        header.classList.add('scrolled')
        title.classList.add('scrolled')
        elts[0].style.color = '#6A38FF';
        elts[1].style.color = '#6A38FF';
        elts[2].style.color = '#6A38FF';
        elts[3].style.color = '#6A38FF';
        elts[4].style.color = '#6A38FF';
      }
    }

    
    window.addEventListener('scroll', onWindowScroll)
    
   
  
  }

 /* onFileChanged(event) {
    this.selectedFile = event.target.files[0]
  }

  onUpload() {
    // upload code goes here
  }*/

  
}
