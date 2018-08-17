<template>
    <div class="messages">
        <div v-for="message in receivedMessages" :key="message.id">
            <div class="userInfo">
                <span class="time">{{message.time}} </span>
                <span class="user"> {{message.nickname}}</span>
            </div>
            <div class="messWrap">
                <p>{{message.message}}</p>
            </div>
        </div>    
    </div>
</template>

<script>
export default {
    data() { return{  
       }        
    },
    props: ['receivedMessages'],
}
</script>

<style>

</style>
