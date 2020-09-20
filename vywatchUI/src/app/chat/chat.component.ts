import { Component, OnInit } from '@angular/core';
import { ChatService } from '../chat.service';
import {MessageChatService} from '../../process/Service/MessageChatService';
import { HttpClient } from '@angular/common/http';
import {Conversation} from '../../process/Model/Conversation';
@Component({
  selector: 'app-chat',
  templateUrl: './chat.component.html',
  styleUrls: ['./chat.component.css']
})
export class ChatComponent implements OnInit {
  
   MessageChatService : MessageChatService
   Conversation : Conversation;
  ngOnInit() {
    this.MessageChatService = new MessageChatService(this.http);
    this.Conversation = new Conversation();
  }

  user:String;
    room:String;
    messageText:String;
    messageArray:Array<{user:String,message:String}> = [];
    idconversation;
    constructor(private _chatService:ChatService, readonly http:HttpClient){
        this._chatService.newUserJoined()
        .subscribe(data=> this.messageArray.push(data));


        this._chatService.userLeftRoom()
        .subscribe(data=>this.messageArray.push(data));

        this._chatService.newMessageReceived()
        .subscribe(data=>this.messageArray.push(data));
    }

    join(){
        this._chatService.joinRoom({user:localStorage.getItem('pseudo'), room:this.room});
    }

    leave(){
        this._chatService.leaveRoom({user:localStorage.getItem('pseudo'), room:this.room});
    }

    sendMessage()
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
