<template>
    <div id="chat">
        <header>
            <div id="chatName">
                <h4>VueChat</h4>
            </div>
        </header>

        <message v-bind:receivedMessages='messages'></message>

        <footer>
            <div id="sendMsg">
                <input type='text' placeholder="Enter your message" v-model="message">
                <button id="sendBtn" v-on:click="sendMessage"> Send </button>
            </div>
        </footer>
    </div>
</template>

<script>
import message from './Message.vue';

export default {
    data() { return{
        message: '',
        messages: []
        }
    },
        components: {
            message
        },
        methods:{
            sendMessage: function(){
                this.messages.push(this.message);
            }
        }
    } 
</script>

<style>
    @import '../css/app.css';
</style>


