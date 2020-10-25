import { AfterViewChecked, Component, ElementRef, OnChanges, OnInit, ViewChild } from '@angular/core';
import { ChatService } from '../../process/Service/ChatService/chat.service';
import {InstantMessagingService} from '../../process/Service/InstantMessaging/instant-messaging.service';
import { HttpClient } from '@angular/common/http';
import {Conversation} from '../../process/Model/Conversation/conversation';
import { User } from 'src/process/Model/User/user';
@Component({
  selector: 'app-chat',
  templateUrl: './chat.component.html',
  styleUrls: ['./chat.component.css']
})
export class ChatComponent implements OnInit, AfterViewChecked {
  
  @ViewChild('scrollMe') private myScrollContainer: ElementRef;
  
   MessageChatService : InstantMessagingService
   Conversation : Conversation;
   messageCSS: string
   User : User
   UserStorage :any
   
   test
  ngOnInit() {
    this.MessageChatService = new InstantMessagingService(this.http);
    this.Conversation = new Conversation();
    this.scrollToBottom();
   

  }

 


    user:String;
    room:String;
    messageText:String;
    messageArray:Array<{user:String,message:String}> = [];
    idconversation;
    constructor(private _chatService:ChatService, readonly http:HttpClient){
      this.UserStorage=localStorage.getItem('pseudo')

        this._chatService.newUserJoined()
        .subscribe(data=> this.messageArray.push(data));


        this._chatService.userLeftRoom()
        .subscribe(data=>this.messageArray.push(data));

        this._chatService.newMessageReceived()
        .subscribe(data=>this.messageArray.push(data));
    }

    join(){
        this._chatService.joinRoom({user:localStorage.getItem('pseudo'), room:this.room});
        this.User=new User()
        this.User.pseudo=localStorage.getItem('pseudo');
    }

    leave(){
        this._chatService.leaveRoom({user:localStorage.getItem('pseudo'), room:this.room});
    }

    sendMessage()
    {
      
      if(this.messageText.length>0)
      {
        
        this.MessageChatService.GetIdConv().subscribe(
          Response => {
            console.log(Response)
              this.Conversation=Response;
              console.log(this.Conversation.idconversation)
             
          })
         
        this._chatService.sendMessage({user:localStorage.getItem('pseudo'), room:this.room, message:this.messageText});
        this.messageText=''
        
      }
        
    }

   

    ngAfterViewChecked() {        
      this.scrollToBottom();        
    } 

    scrollToBottom(): void {
      try {
          this.myScrollContainer.nativeElement.scrollTop = this.myScrollContainer.nativeElement.scrollHeight;
      } catch(err) { }                 
    }

}
