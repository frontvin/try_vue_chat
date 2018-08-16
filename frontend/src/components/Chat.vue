<template>
    <div id="chat">
        <header>
            <div id="chatName">
                <h4>VueChat</h4>
            </div>
        </header>

        <message v-bind:receivedMessages='objMessage'></message>

        <footer>
            <div id="sendMsg">
                <input type='text' placeholder="Enter your message" v-model="message">
                <button id="sendBtn" type='submit' v-on:click="sendMessage"> Send </button>
            </div>
        </footer>
    </div>
</template>

<script>
import message from './Message.vue';

class Message {
    constructor(message, nickname) {
        this.message = message;
        this.nickname = nickname;
        //this.time = new Date();
    }
}

export default {
    data() { return{
        message: '',
        nickname: localStorage.getItem('nickname').toString(),
        objMessage: []
        }
    },
        components: {
            message
        },
        methods:{
            sendMessage: function(){
                if(this.message!==''){
                    this.objMessage.push(new Message(this.message, this.nickname));
                    this.message=''
                }
            }
        }
    } 
</script>

<style>
    @import '../css/app.css';
</style>


